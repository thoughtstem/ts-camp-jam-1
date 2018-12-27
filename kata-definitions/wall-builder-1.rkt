#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 wall-builder
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:dart (builder-dart #:entity (lava))))))
