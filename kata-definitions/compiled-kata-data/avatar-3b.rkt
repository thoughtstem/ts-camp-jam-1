#lang ts-camp-jam-1
(define (my-avatar)
 (custom-avatar #:sprite (sheet->sprite STUDENT-IMAGE-HERE
                                        #:columns 3)))

(battle-arena-game
#:avatar (my-avatar))
