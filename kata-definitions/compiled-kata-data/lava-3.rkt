#lang ts-camp-jam-1
(battle-arena-game
#:weapon-list (list (custom-weapon
                     #:dart (lava-builder
                             #:damage  25
                             #:size    2
                             #:sprite  (square 10 'solid 'black)
                             #:range   10))))
