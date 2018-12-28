#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 spear-tower-1
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:name "Spear Tower"
                        #:sprite (make-icon "ST")
                        #:dart (spear-tower-builder)))))
