#lang ts-camp-jam-1

(define-kata-code ts-camp-jam-1 magic-balance-2
  (battle-arena-game
   #:weapon-list (list (custom-weapon #:name "Heavy Magic"
                                      #:dart (custom-dart #:sprite (scale 2 flame-sprite)
                                                          #:damage 200
                                                          #:durability 50
                                                          #:speed  10
                                                          #:range  36
                                                          #:components
                                                          (move-in-ring))
                                      #:rarity 'uncommon))))

