#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 avatar-3

  (define (my-avatar)
    (custom-avatar #:sprite STUDENT-IMAGE-HERE))
  
  (battle-arena-game
   #:avatar (my-avatar)))