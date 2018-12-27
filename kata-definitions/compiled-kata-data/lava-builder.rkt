#lang ts-camp-jam-1
(battle-arena-game
#:enemy-list (list (custom-enemy #:amount-in-world 20))
#:weapon-list (list (custom-weapon
                     #:dart (builder-dart #:entity
                                          (custom-enemy)))))
