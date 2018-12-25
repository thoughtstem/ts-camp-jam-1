#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 paint-thrower-1
  
  (battle-arena-game
   #:weapon-list (list (custom-weapon #:name   "Paint Thrower"
                                      #:sprite PAINT-THROWER-ICON
                                      #:dart   (paint))))
  )