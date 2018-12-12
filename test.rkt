#lang racket

(require game-engine
         game-engine-rpg
         game-engine-demos-common)

;TODOS:
;  * Taking friendly fire from own bullets...
;    * A way of specifying damage filters (for teams?)
;  * Health bars are too big.
;    * A way of controling size / display (color change?)
;    * A way of setting max (calculate percentage for the bar x-scale)
;    * While we're at it, set the min at 0 (no wrap around)
;  * Not dying yet.
;    * Where to specify death rules? On death?
;    * Can it be as simple as when health is 0?



;Combat system

;Starting with the basics.
;Doing damage
;  A "damager" entity has some damage it deals
;  when it touches a damagable entity

;Taking damage
;  A "damagable" entity can take damage from "damagers"
;  Depending on the logic of this entity, the amount of damage can be modified (increased or decreased)



;But we want a language that lets us create lots of damagers/damagables
;  at minimal effort.
;  All with separate health bars



;Later, we'll build the attack/defend/stats langauges on top of the above model...


(struct damager   (amount))

(define (take-damage g e)
  (define damagers
    (map
     (λ(e) (get-component e damager?))
     (filter (has-component? damager?) (colliding-with e g))))

  (displayln (~a "taking damage: " (get-name e)))

  (set-storage "health" e
               (- (get-storage-data "health" e)
                  (apply + (map damager-amount damagers)))))

(define (combatant original-e)

  (define combatant-id (random 100000))

  (define find-combatant (curry entity-with-storage "combatant-id" combatant-id))
  
  (define bar (~>
               (abstract-progress-bar #:color 'red
                                      #:data-from (λ(g)
                                                    (~> g
                                                        (find-combatant _)
                                                        (get-storage-data "health" _))))
               (add-component _ (lock-to find-combatant
                                         #:offset (posn 0 -20)))))
  
  (add-components original-e
   (storage "health" 100)
   (storage "combatant-id" combatant-id)
   (on-collide (has-component? damager?) take-damage) 
   (on-start (spawn bar))))



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
  (combatant
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


