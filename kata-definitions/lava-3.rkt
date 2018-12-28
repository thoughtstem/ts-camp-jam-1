#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 lava-3
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:name "Lava Pit"
                        #:sprite (make-icon "LP" 'red 'white)
                        #:dart (lava-builder
                                #:damage  25
                                #:size    1
                                #:sprite  (square 10 'solid 'black)
                                #:range   10)))))