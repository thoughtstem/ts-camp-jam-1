#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 spear-tower-3
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:dart (spear-tower-builder
                                #:sprite STUDENT-IMAGE-HERE
                                #:damage 100
                                #:speed 10
                                #:range 50)))))