#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 spear-tower-2
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:dart (spear-tower-builder
                                #:speed 10 
                                #:range 50)))))
