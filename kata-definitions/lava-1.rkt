#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 lava-1
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:name "Lava Pit"
                        #:sprite (make-icon "LP")
                        #:dart (lava-builder)))))
