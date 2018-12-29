#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 spike-mine-3
  (battle-arena-game
   #:weapon-list (list (custom-weapon
                        #:name "Spike Mine"
                        #:sprite (make-icon "SM" 'gray 'white)
                        #:dart (spike-mine-builder
                                #:sprite STUDENT-IMAGE-HERE
                                #:damage 100
                                #:speed 10
                                #:range 50)))))