#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 lava-builder
  (battle-arena-game
   #:enemy-list (list (custom-enemy #:amount-in-world 20))
   #:weapon-list (list (custom-weapon
                        #:dart (builder-dart #:entity
                                             (lava))))))
