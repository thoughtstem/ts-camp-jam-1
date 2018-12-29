#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 avatar-1
  
  (battle-arena-game
   #:enemy-list (list (custom-enemy #:amount-in-world 10
                                    #:weapon          (custom-weapon
                                                       #:name "Repeater")))
   #:item-list (list (custom-armor #:name          "Repeater Armor"
                                   #:sprite        (make-icon "RA")
                                   #:protects-from "Repeater"
                                   #:change-damage (divide-by 2)
                                   #:rarity        'rare)))

  
  )