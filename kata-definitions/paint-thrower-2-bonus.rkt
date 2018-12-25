#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 paint-thrower-2-bonus
  (define (my-weapon-3)
    (custom-weapon #:name              "Paint Thrower"
                   #:sprite            PAINT-THROWER-ICON
                   #:dart              (paint)
                   #:rarity            'epic
                   #:fire-rate         30
                   #:mouse-fire-button 'left))
  
  (battle-arena-game
   #:weapon-list (list (my-weapon-3)))
  )