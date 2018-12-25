#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 spear-2
  (define (my-weapon-1)
    (custom-weapon #:name   "Spear"
                   #:sprite SPEAR-ICON
                   #:dart   (spear)
                   #:rarity 'common))
  
  (battle-arena-game
   #:weapon-list (list (my-weapon-1)))
  )