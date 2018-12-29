#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 sword-armor-3
  
  (battle-arena-game
   #:enemy-list (list (custom-enemy #:amount-in-world 10
                                    #:weapon          (custom-weapon
                                                       #:name "Sword"
                                                       #:dart (sword))))
   #:item-list (list (custom-armor #:name          "Sword Armor"
                                   #:sprite        (make-icon "RA")
                                   #:protects-from "Sword"
                                   #:change-damage (divide-by 2)
                                   #:rarity        'rare)))

  
  )