#lang ts-camp-jam-1
(battle-arena-game
#:weapon-list (list (custom-weapon
                     #:name "Spike Mine"
                     #:sprite (make-icon "SM" 'gray)
                     #:dart (spike-mine-builder
                             #:speed 10
                             #:range 50))))
