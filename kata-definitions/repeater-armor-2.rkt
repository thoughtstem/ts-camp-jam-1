#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 repeater-armor-2
  
  (battle-arena-game
   #:item-list (list (custom-armor #:name          "Repeater Armor"
                                   #:sprite        (make-icon "RA")
                                   #:protects-from "Repeater"
                                   #:change-damage (divide-by 2)
                                   #:rarity        'rare
                                   )))

  
  )