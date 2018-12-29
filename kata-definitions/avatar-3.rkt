#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 avatar-3

  (define (my-avatar)
    (custom-avatar #:sprite (random-character-sprite)))
  
  (battle-arena-game
   #:avatar (my-avatar)))