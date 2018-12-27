#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 tower-builder-1
  (battle-arena-game
   #:enemy-list (list (custom-enemy #:amount-in-world 20))
   #:weapon-list (list (custom-weapon
                        #:dart (builder-dart #:entity
                                             (tower #:fire-rate 50
                                                    #:weapon (custom-weapon
                                                              #:dart (spear))))))))