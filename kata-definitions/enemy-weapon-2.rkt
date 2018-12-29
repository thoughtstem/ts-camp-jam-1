#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 enemy-weapon-2
  
(define (my-weapon)
  (custom-weapon
   #:name      "Sword"
   #:dart      (sword)
   #:fire-rate 10))

(battle-arena-game
 #:enemy-list (list (custom-enemy
                     #:weapon (my-weapon)))))