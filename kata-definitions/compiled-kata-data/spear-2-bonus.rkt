#lang ts-camp-jam-1
(define (my-weapon-1)
 (custom-weapon #:name              "Spear"
                #:sprite            SPEAR-ICON
                #:dart              (spear)
                #:rarity            'common
                #:mouse-fire-button 'left
                #:rapid-fire?       #f))

(battle-arena-game
#:weapon-list (list (my-weapon-1)))
