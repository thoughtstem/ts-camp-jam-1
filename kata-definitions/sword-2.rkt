#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 sword-2
  (define (my-weapon-2)
    (custom-weapon #:name    "Sword"
                   #:sprite  SWORD-ICON
                   #:dart    (sword)
                   #:rarity  'rare))
  
  (battle-arena-game
   #:weapon-list (list (my-weapon-2))))