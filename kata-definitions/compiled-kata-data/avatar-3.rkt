#lang ts-camp-jam-1
(define (my-avatar)
 (custom-avatar #:sprite (random-character-sprite)))

(battle-arena-game
#:avatar (my-avatar))
