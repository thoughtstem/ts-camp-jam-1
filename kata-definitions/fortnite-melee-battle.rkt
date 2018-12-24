#lang ts-camp-jam-1

(define-kata-code fortnite-melee-battle
  ; ======= FORTNITE MELEE =======
  (define (my-sword-bullet)
    (custom-dart #:position (posn 10 0)
                 #:sprite sword-bullet-sprite
                 #:damage 50
                 #:durability 20
                 #:speed  0
                 #:range  10
                 #:components (every-tick (change-direction-by 15))))

  (define (my-paint-bullet)
    (custom-dart #:position (posn 25 0)
                 #:sprite paint-sprite
                 #:damage 5
                 #:durability 5
                 #:speed  3
                 #:range  15
                 #:components (on-start (set-size 0.5))
                 (every-tick (scale-sprite 1.1))))

  (battle-arena-game
   #:bg              (custom-background)
   #:avatar          (custom-avatar #:sprite      (row->sprite (random-character-row))
                                    #:key-mode    'wasd
                                    #:mouse-aim?  #t)
   #:weapon-list     (list (custom-weapon #:sprite sword-sprite
                                          #:bullet (my-sword-bullet)
                                          #:rapid-fire? #f
                                          #:rarity 'common)
                           (custom-weapon #:sprite paint-thrower-sprite
                                          #:bullet (my-paint-bullet)
                                          #:fire-rate 30
                                          #:rarity 'legendary)
                           (custom-weapon #:sprite spear-sprite
                                          #:bullet (spear-bullet)
                                          #:rapid-fire? #f
                                          #:rarity 'uncommon)
                           (custom-weapon #:sprite fire-magic
                                          #:bullet (fire-magic-bullet)
                                          #:rapid-fire? #f
                                          #:rarity 'rare)
                           (custom-weapon #:sprite    laserblade-sprite
                                          #:bullet    (laserblade-bullet)
                                          #:rapid-fire? #f
                                          #:rarity    'epic))))