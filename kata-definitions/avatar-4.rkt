#lang ts-camp-jam-1


(define-kata-code ts-camp-jam-1 avatar-4
  (define (my-avatar)
    (custom-avatar #:sprite (sheet->sprite STUDENT-IMAGE-HERE
                                           #:columns 3)
                   #:key-mode   'wasd
                   #:mouse-aim? #t))
   
  (battle-arena-game
   #:avatar (my-avatar))
  )