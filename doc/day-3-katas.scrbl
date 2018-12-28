#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== DEFENSIVE BASE KATAS ======
@;============== DAY 3 ================
@title{Defensive Base Katas}



@section{Lava Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Lava Pit"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("..." "...")
   '("..." "..."))}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Lava Pit"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{

  
 @(student-should-translate #:english "Make a game that has a lava pit."
                            #:code 'lava-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Lava Pit"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{


 @(student-should-translate #:english "Make a game that has a lava pit with a custom damage and size."
                            #:code 'lava-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Lava Pit"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a lava pit with a custom damage, size, sprite, and range."
                            #:code 'lava-3)
}




@section{Spike Mine Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Spike Mine"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("..." "...")
   '("..." "..."))}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Spike Mine"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Spike Mine"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Spike Mine"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{

 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-3)
}





@section{Spear Tower Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Spear Tower"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("..." "...")
   '("..." "..."))

 Can students share examples of balanced or unbalanced games from their lives?  Is Fortnite perfectly balanced?
}



@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
    
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-3)
}


@include-section["avatar-katas.scrbl"]
@include-section["enemy-katas.scrbl"]

@subsection{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@(define (cool-guy) (image "doc/imgs/cool-guy.png"))
@(define (bad-guy) (image "doc/imgs/bad-guy.png"))
@(define (spear) (image "doc/imgs/spear.png"))
@(define (sword) (image "doc/imgs/sword.png"))
@(define (paint-thrower) (image "doc/imgs/paint-thrower.png"))

@codeblock{#lang ts-camp-jam-1}
@racketblock[
 (define (cool-guy)
   (custom-avatar #:sprite #, (cool-guy)))

 (define (bad-guy)
   (custom-enemy #:sprite #,       (bad-guy)
                 #:ai              'easy
                 #:health          200
                 #:shield          100
                 #:amount-in-world 5))

 (define (sharp-stick)
   (custom-weapon #:name     "Spear"
                  #:sprite #,(spear)
                  #:dart     (spear)
                  #:rarity   'common))

 (define (metal-blade)
   (custom-weapon #:name     "Sword"
                  #:sprite #,(sword)
                  #:dart     (sword)))

 (define (paint-spitter)
   (custom-weapon #:name     "Paint Thrower"
                  #:sprite #,(paint-thrower)
                  #:dart     (paint)
                  #:rarity   'epic))

 (battle-arena-game
  #:avatar      (cool-guy)
  #:enemy-list  (list (bad-guy))
  #:weapon-list (list (sharp-stick)
                      (metal-blade)
                      (paint-spitter)))
 ]

@subsection{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:

@codeblock{#lang ts-camp-jam-1}
@racketblock[

 (battle-arena-game
  #:avatar      (custom-avatar #:sprite #, (cool-guy))
  #:enemy-list  (list (custom-enemy #:sprite #,       (bad-guy)
                                    #:ai              'easy
                                    #:health          200
                                    #:shield          100
                                    #:amount-in-world 5))
  #:weapon-list (list (custom-weapon #:name     "Spear"
                                     #:sprite #,(spear)
                                     #:dart     (spear)
                                     #:rarity   'common)
                      (custom-weapon #:name     "Sword"
                                     #:sprite #,(sword)
                                     #:dart     (sword))
                      (custom-weapon #:name     "Paint Thrower"
                                     #:sprite #,(paint-thrower)
                                     #:dart     (paint)
                                     #:rarity   'epic)))
 ]
