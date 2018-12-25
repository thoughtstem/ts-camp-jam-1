#lang ts-camp-jam-1
(define (my-avatar)
 (custom-avatar #:sprite     STUDENT-IMAGE-HERE
                #:key-mode   'wasd
                #:mouse-aim? #t))

(battle-arena-game
#:avatar (my-avatar))
