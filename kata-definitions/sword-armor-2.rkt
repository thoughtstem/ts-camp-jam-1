#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 sword-armor-2
  
  (battle-arena-game
   #:item-list (list (custom-armor #:name   "Sword Armor"
                                   #:sprite (make-icon "SA")
                                   #:protects-from "Sword"
                                   #:change-damage (subtract-by 30)
                                   #:rarity 'rare)))

  
  )