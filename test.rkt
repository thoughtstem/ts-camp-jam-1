#lang racket

;BUG?  Why is divert-damage not damaging shields in the main test?

;TODOS:
; 1) Do we need to beef up damagers at all?  Add tags?
;    * Write test for friendly fire


;TODOS:
;  * Taking friendly fire from own bullets...
;    * A way of specifying damage filters (for teams?)
;  * Health bars are too big.
;    * A way of controling size / display (color change?)
;    * A way of setting max (calculate percentage for the bar x-scale)
;  * Not dying yet.
;    * Where to specify death rules? On death?
;    * Can it be as simple as when health is 0?


(module+ test
  (require rackunit)

  ;Setup for the tests
  (define base-player
    (sprite->entity empty-image
                    #:name ""
                    #:position (posn 0 0)))

  (define take-10-damage (damager 10))

  
  (define (half x) (/ x 2))

  
  (define (check-combatant-takes-damage? e d #:final-health f #:final-shield (s 100) msg)

    (define g (initialize-game (list e)))

    (define damaged-e
      (entity+damager->entity e d))

    (check-equal? (get-health damaged-e) f msg)

    (check-equal? (get-shield damaged-e) s msg))



  ;Tests for attaching stats to players
  
  (check-equal?
   ((has-stat? "health") (combatant base-player))
   #t)

  (check-equal?
   ((has-stat? "shield") (combatant base-player))
   #t)
  
  ;Tests for damaging stats

  ;Most basic.  No damage processors.  The player will take damage,
  ;  unadjusted from any damagers.
  (let ()
    (define player (combatant base-player))

    (check-combatant-takes-damage? player
                                   take-10-damage
                                   #:final-health 90
                                   "Taking 10 damage normally should give you 90 health"))


  ;Combatants can start with a different level of health
  (let ()
    (define player (combatant base-player
                              #:stats (list (make-stat-config 'health 50  (stat-progress-bar 'red))
                                            (make-stat-config 'shield 100 (stat-progress-bar 'blue)))))

    (check-combatant-takes-damage? player
                                   take-10-damage
                                   #:final-health 40
                                   "Taking 10 damage and starting with 50 health, should give you 40 health"))
  

  ;Example: Taking half damage
  (let ()

    
    (define player (combatant #:damage-processor (simple-numeric-damage #:adj half)
                              base-player))

    (check-combatant-takes-damage? player
                                   take-10-damage
                                   #:final-health 95
                                   "Taking 10 damage with a 50% modifier should give you 95 health"))

  

  ;Slightly more complex.  This makes a player very weak -- taking any amount
  ;  of damage will result in the player taking 10000 damage (probably instant death).
  (let ()
    (define player (combatant #:damage-processor (always-critical-hit)
                              base-player))

    (check-combatant-takes-damage? player
                                   take-10-damage
                                   #:final-health 0
                                   "Taking 10 damage with critical hit should give you 0 health"))


  ;Take different kinds of damage (damage to shield but not health)
  (let ()
    (define player (combatant #:damage-processor (divert-damage #:first-stat "shield"
                                                                #:first-stat-protection half
                                                                
                                                                #:second-stat "health"
                                                                #:second-stat-protection identity)
                              base-player))

    (check-combatant-takes-damage? player
                                   take-10-damage
                                   #:final-health 100
                                   #:final-shield 95
                                   (~a "Taking 10 damage with a shield that\n"
                                       "reduces damage by half should give you 100 health and 95 shield"))

    )

  ;Don't take friendly fire (from self)



  
  
  )



(require game-engine
         game-engine-rpg
         game-engine-demos-common)


(struct damager          (amount))
(struct damage-processor (f))

(define (make-damage-processor f)
  (damage-processor f))


(define (simple-numeric-damage #:do (effect change-health) #:adj (adj identity))
  (make-damage-processor
   (λ(g an-entity a-damager)
     (effect an-entity (- (adj (damager-amount a-damager)))))))

(define (always-critical-hit)
  (simple-numeric-damage #:adj (thunk* 100000)))



(define (divert-damage #:first-stat-protection  (adj1 identity)
                       #:first-stat             (stat1 "shield") 
                       #:second-stat-protection (adj2 identity)
                       #:second-stat            (stat2 "health"))

  ;Wow, you can have contracts on an inner function...
  (define/contract (inner g an-entity a-damager)
    (-> (or/c game? #f)
        (and/c (combatant-with-stat? stat1)
               (combatant-with-stat? stat2))
        damager?
        (and/c (combatant-with-stat? stat1)
               (combatant-with-stat? stat2)))
    
    (define first-damage (adj1 (damager-amount a-damager)))

    (displayln (~a "first-damage " first-damage))

    (define first-stat-amount (get-stat stat1 an-entity))

    (define leftover-damage (max 0 (- first-damage first-stat-amount)))

    (define second-damage (adj2 leftover-damage))

    (displayln (~a "second-damage " second-damage))

    (~> an-entity
        (change-stat stat1 _ (- first-damage))
        (change-stat stat2 _ (- second-damage))))


  (make-damage-processor
   inner))

;Takes a bunch of damage processors and a damager and returns an entity.
;  Even if the only thing done to the entity is to adjust the health,
;  this is fundamental technique that can be used to implement:
;    * Armor
;    * Friendly fire (on or off)
;    * Buffs and debuffs
;    * Etc.
;Used in more complex ways, this technique can be used to implement various
;  side effects of damage
;    * Getting poisoned
;    * Losing mana
;    * Armor breaking
;Anything that needs to happen as a result of taking damage should be possible
;  by adding damage-processor components to entities.
;It gives the entity getting damaged a chance to run a variety of adjustment
;  functions wrapped up in damage-processor components
;  Note: The order matters.  Earlier damage-processors run first.


(define (combatant? e)
  (and (entity? e)
       (get-component e damage-processor?)))

(define (has-stat? n)
  (lambda (e)
    (not (not (get-storage (stat-name n) e)))))

(define (combatant-with-stat? n)
  (and/c combatant?
         (has-stat? n)))

(define/contract (entity+damager->entity e damager)
  (-> combatant? damager? combatant?)
  
  (update-entity-from-damage #f e
                             (get-component e damage-processor?)
                             damager))


(define (update-entity-from-damage g e dp the-damager)
  (match-define (damage-processor f) dp)

  (f g e the-damager))


(define (stat-name s)
  (~a s "-stat"))

(define/contract (get-stat s e)
  (-> (or/c string? symbol?) entity? number?)
  (get-storage-data (stat-name s) e))

(define/contract (set-stat s e v)
  (-> (or/c string? symbol?) entity? number? entity?)
  (set-storage (stat-name s) e (max 0 v)))

(define/contract (change-stat s e v)
  (-> (or/c string? symbol?) entity? number? entity?)
  (set-stat s e (+ v (get-stat s e))))

(define/contract (init-stat s e v)
  (-> (or/c string? symbol?) entity? number? entity?)
  (add-component e
                 (storage (stat-name s) v)))

;Could macroify the creation of these...

(define-syntax-rule (define-stat name get set change init)
  (begin

    (define/contract (get e)
      (-> (combatant-with-stat? (~a 'name)) number?)
      (get-stat (~a 'name) e))

    (define/contract (set e v)
      (-> (combatant-with-stat? (~a 'name)) number? combatant?)
      (set-stat (~a 'name) e v))

    (define/contract (change e v)
      (-> (combatant-with-stat? (~a 'name)) number? combatant?)
      (change-stat (~a 'name) e v))

    (define/contract (init e v)
      (-> (and/c combatant?
                 (not (combatant-with-stat? (~a 'name))))
          number?
          (combatant-with-stat? (~a 'name)))
      (init-stat (~a 'name) e v))))

(define-stat health get-health set-health change-health init-health)
(define-stat shield get-shield set-shield change-shield init-shield)



(define (take-damage g e)
  (define damagers
    (map
     (λ(e) (get-component e damager?))
     (filter (has-component? damager?) (colliding-with e g))))

  (define damaged-e
    (foldl (λ(n a)
             (entity+damager->entity a n))
           e
           damagers))

  damaged-e)



(struct stat-config (name starting-value display-entity))

(define (make-stat-config n (starting-value 100) (display-entity (stat-progress-bar 'red)))
  (stat-config n starting-value (display-entity n)))



;This is admittedly a mess, but this is what you would
; change to make a new kind of progress bar display
(define (stat-progress-bar color #:offset (p (posn 0 -20)))
  
  
  (λ(stat-name)
    (λ(find-combatant)

      (define (displayer data-source)
        (abstract-progress-bar #:color color
                               #:height 5
                               #:width  20
                               #:data-from data-source))
      
      (define (safe-get-stat n e)
        (if e
            (get-stat n e)
            0))

      (define data-source
        (λ(g)
          (~> g
              (find-combatant _)
              (safe-get-stat stat-name _))))
    
      (~>
       (displayer data-source)
       (add-component _ (lock-to find-combatant
                                 #:offset p))))))


(define/contract (combatant original-e
                   #:damage-processor  (dp (simple-numeric-damage))
                   #:stats (stats (list (make-stat-config 'health 100 (stat-progress-bar 'green #:offset (posn 0 -20)))
                                        (make-stat-config 'shield 100 (stat-progress-bar 'blue  #:offset (posn 0 -15))))))

  (->* (entity?)
       (#:damage-processor damage-processor?
        #:stats (listof stat-config?))
       combatant?)

  (define combatant-id (random 100000))

  (define find-combatant (curry entity-with-storage "combatant-id" combatant-id))

  ;(define bar ((stat-config-display-entity (first stats)) find-combatant))


  (define bars
    (map
     (λ(stat)
       ((stat-config-display-entity stat) find-combatant))
     stats))
  
  (define on-start-spawn-bars
    (map
     (λ(b)
       (on-start (spawn b)))
     bars))
  
  (define e-without-stats
    (add-components original-e
                    (storage "combatant-id" combatant-id)
                    (on-collide (has-component? damager?) take-damage) 
                    on-start-spawn-bars
                    dp))

 
  (foldl
   (λ(n a)
     (init-stat (stat-config-name n) a (stat-config-starting-value n)))
   e-without-stats
   stats))



(define (my-damager p)
  (combatant
   (sprite->entity (circle 10 'solid 'red)
                   #:name "tower"
                   #:position p
                   #:components
                   (physical-collider)
                   (static)
                   (damager 10))))

(define (my-damagable p)
  (combatant #:damage-processor (divert-damage)
   (sprite->entity (star 10 'solid 'green)
                   #:name "player"
                   #:position p
                   #:components
                   (physical-collider)
                   (key-movement 10)
                   (on-key 'space (spawn my-bullet)))))


(define (my-bullet)
  (combatant
   (sprite->entity (square 5 'solid 'black)
                   #:name "bullet"
                   #:position (posn 0 20)
                   #:components
                   (physical-collider)
                   (damager 50)
                   (direction 90)
                   (speed 1)
                   (every-tick (move))
                   (after-time 200 die))))


(define (bg)
  (sprite->entity (new-sprite (rectangle 1 1 'solid 'darkgray)
                              #:scale 500)
                  #:position (posn 0 0)
                  #:name "bg"))

(start-game
   (my-damager (posn 250 250))
   (my-damagable (posn 250 0))
   (bg))


