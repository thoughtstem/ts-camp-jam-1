#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 spike-mine-1
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:name "Spike Mine"
                        #:sprite (make-icon "SM")
                        #:dart (spike-mine-builder)))))
