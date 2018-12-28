#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 lava-3
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:dart (lava-builder
                                #:damage  25
                                #:size    2
                                #:sprite  (square 10 'solid 'black)
                                #:range   10)))))