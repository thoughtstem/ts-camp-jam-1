#lang ts-camp-jam-1
(define (my-enemy)
 (custom-enemy #:sprite          STUDENT-IMAGE-HERE
               #:ai              'easy
               #:health          200
               #:shield          100
               #:amount-in-world 10))

(battle-arena-game
#:enemy-list (list (my-enemy)))
