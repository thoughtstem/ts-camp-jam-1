#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)


@;====== AVATAR KATAS =======
@section{Avatar Katas}

@;----- Air AVATAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Avatar"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 Game design vocab!

  @(student-should-know-difference-between
    '("Player" "A human being playing a game")
    '("Avatar" "A player's represetation in the game"))

  The are NOT the same!  (Lots of people in the world don't know this)
}


@;====== Stone AVATAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'stone
               #:title "Avatar"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Format"]{It's probably not important to officially
  time students on this kata.  It's also okay to encourage lively discussion.
 Some of the pictures are funny, and that's okay.}

 Students should be able to identify each of the following as either
 avatars or players:

 @image{doc/imgs/avatars/tomato-dance.gif}

 @image{doc/imgs/players/players2.jpg} 

 @image{doc/imgs/avatars/avatar-dance.gif}

 @image{doc/imgs/players/players.jpg} 

 @image{doc/imgs/avatars/bear-dance.gif} 
 }








@;----- BRONZE AVATAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, avatar, keyword."
               #:extra-dollars-for "helping teammates."]{
 @(student-should-translate #:english "Make a game with an avatar."
                            #:code 'avatar-1)
}

@;----- SILVER AVATAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Avatar"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "new keyword, the circle function & its parameters."
               #:extra-dollars-for "helping teammates, trying new colors or shapes."]{

 @side-note["Additional shapes"]{triangle, square, star, rectangle (needs
  2 numbers), ellipse (needs 2 numbers).}
  
 @student-should-translate[#:english "Make a game with a blue circle avatar."
                           #:code 'avatar-2]
}


@;----- GOLD AVATAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Avatar"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-avatar) can be renamed to anything, draw simple -- nothing is saved for later."
               #:extra-dollars-for "helping teammates, creativity."]{
                                                                                            
 @side-note["Tip"]{Give students the piskel cheat sheet.}

 @(student-should-translate #:english "Make a game with a simple custom avatar created in Piskel."
                            #:code 'avatar-3)
}


@;----- PLATINUM AVATAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'platinum
               #:title "Avatar"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do new keywords mean? what does sheet->sprite mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
 @(student-should-translate #:english "Make a game with a custom avatar that uses a sprite sheet created in Piskel and adds additional customizations to (custom-avatar) including key-mode and mouse-aim."
                            #:code 'avatar-4)
}

@;====== ENEMY KATAS ======
@section{Enemy Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Enemy"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Enemy Bot" "An avatar controlled by artificial intelligence -- sometimes used by cheaters, but sometimes used by game designers to test a game.")
   '("Artificial Intelligence" "A computer program that seems to be intelligent, and can sometimes fool human players into thinking it is."))

  
}


@;----- BRONZE ENEMY ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Enemy"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, enemy."
               #:extra-dollars-for "helping teammates."]{
 @(student-should-translate #:english "Make a game with an enemy."
                            #:code 'enemy-1)
}


@;----- SILVER ENEMY ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Enemy"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "all the new keywords, keywords are always optional,
                    (my-enemy) can be anything."
               #:extra-dollars-for "helping teammates."]{
 @side-note["Hint"]{AI levels are: 'easy, 'medium, 'hard.}
  
 @(student-should-translate #:english "Make a game with a defined and customized enemy."
                            #:code 'enemy-2)
}


@;----- GOLD ENEMY ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Enemy"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "draw simple -- nothing is saved for later."
               #:extra-dollars-for "helping teammates, creativity."]{
 @side-note["Hint"]{Use the piskel cheat sheet!}
                                                                                 
 @(student-should-translate #:english "Make a game with an enemy using a custom image."
                            #:code 'enemy-3)
}


@;----- PLATINUM ENEMY ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'platinum
               #:title "Enemy"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what does sheet->sprite mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
 @(student-should-translate #:english "Make a game with a custom enemy that uses a sprite sheet created in Piskel."
                            #:code 'enemy-4)
}
