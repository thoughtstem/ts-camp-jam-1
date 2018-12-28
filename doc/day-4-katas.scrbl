#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== ARMOR KATAS ======
@;============== DAY 4 ================
@title{Armor Katas}


@section{Enemy Weapon Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list, dart."
               #:extra-dollars-for "helping teammates."]{

  
 @(student-should-translate #:english "Make a game that has a an enemy and give it a custom weapon."
                            #:code 'enemy-weapon-1)

 @side-note["Tip"]{In addition to @italic[sword] you can use any of these: paint, spear, lava-builer, spike-mine-builder, or spear-tower-builder.}
 }

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of damage, size, multiple keywords."
               #:extra-dollars-for "helping teammates."]{


 @(student-should-translate #:english "Make a game that has an enemy, give it a custom weapon and customize it."
                            #:code 'enemy-weapon-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, range."
               #:extra-dollars-for "helping teammates, creativity."]{
  
 @(student-should-translate #:english "Make a game that has am enemy, give it a custom weapon, and customize the dart."
                            #:code 'enemy-weapon-3)
}




@section{Sword Armor Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'enemy-weapon-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of multiple keywords, range."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'enemy-weapon-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates, creativity"]{

 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'enemy-weapon-3)
}


@section{Repeator Armor Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Repeator Armor"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list, dart."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'enemy-weapon-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Repeator Armor"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of multiple keywords, range."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'enemy-weapon-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Repeator Armor"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{
    
 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'enemy-weapon-3)
}


@include-section["avatar-katas.scrbl"]
@include-section["enemy-katas.scrbl"]

@section{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@codeblock{#lang ts-camp-jam-1}
@racketblock[
 (define (cool-guy)
   (custom-avatar
    #:sprite (circle 30 'solid 'blue)))

(define (lawsome)
  
 
 (define (bad-guy)
   (custom-enemy
    #:ai              'easy
    #:health          200
    #:shield          100
    #:amount-in-world 10))

 (battle-arena-game
  #:avatar (cool-guy)
  #:enemy-list (list (bad-guy))
 )
 ]

@section{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:

@codeblock{#lang ts-camp-jam-1}
@racketblock[

 (battle-arena-game
  #:avatar (custom-avatar
            #:sprite (circle 30 'solid 'blue))
  #:enemy-list (list (custom-enemy
                      #:ai              'easy
                      #:health          200
                      #:shield          100
                      #:amount-in-world 10))
                      )
 ]