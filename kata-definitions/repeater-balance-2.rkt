#lang ts-camp-jam-1



(define-kata-code ts-camp-jam-1 repeater-balance-2
  (battle-arena-game
   #:weapon-list (list (custom-weapon #:name "Heavy Repeater"
                                      #:dart (custom-dart #:sprite (scale 2 paint-sprite)
                                                          #:damage 500
                                                          #:durability 100
                                                          #:speed  10
                                                          #:range  50)
                                      #:rarity 'uncommon))))

