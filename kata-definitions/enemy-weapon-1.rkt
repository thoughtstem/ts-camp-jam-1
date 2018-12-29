#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 enemy-weapon-1
(battle-arena-game
 #:enemy-list (list (custom-enemy
                     #:weapon (custom-weapon
                               #:dart (sword))))))