#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== MELEE BATTLE MODE KATAS ======
@;============== DAY 1 ================
@title{Melee Battle Mode Katas}


@;====== SPEAR KATAS ======
@section{Spear Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Spear"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Asset" "The fundamental building material of a game.  Can be: art, music, sound effects, code, etc.  Game designers use programming to combine assets into a game.")
   '("Funny Asset" "Any asset that is intended to make players laugh."))

 One of the things that makes Fortnite famous are its funny assets.  What's your favorite!
  
}

@;----- BRONZE SPEAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Spear"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Hint"]{"Spear" can be anything, like "Amaze-spear".}
  
 @(student-should-translate #:english "Make a game that has a spear."
                            #:code 'spear-1)
}

@;----- SILVER SPEAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Spear"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "new keyword, customizable function names (my-weapon-1)."
               #:extra-dollars-for "bonus code, helping teammates."]{
                                                         
 @side-note["Tip"]{Rarity indicates how many there will be in the world. All options are: 'common,
  'uncommon, 'rare, 'epic, 'lengendary.}
 
 @(student-should-translate #:english "Make a game with your own defined spear."
                            #:code 'spear-2)

 @bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

 @DOLLAR

 @(show-kata-code 'spear-2-bonus)
}


@;----- GOLD SPEAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Spear"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-weapon-1) and (my-spear) can be renamed to anything you'd like!"
               #:extra-dollars-for "helping teammates, creativity."]{
 @side-note["Tip"]{Use the piskel cheat sheet! Have them draw fast & simple - they’re not going to keep it!}
  
 @(student-should-translate #:english "Make a game that has a fully customizable spear in it where you can modify its damage and durability."
                            #:code 'spear-3)
}

@;----- PLATINUM SPEAR ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'platinum
               #:title "Spear"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do the new keywords mean?"
               #:extra-dollars-for "helping teammates, creativity."]{  
 @(student-should-translate #:english "Make a game that has a fully customizable spear in it where you can modify its speed, range, and sprite."
                            #:code 'spear-4)
}

@;====== SWORD KATAS ======
@section{Sword Katas}

@;----- BRONZE SWORD ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Sword"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Combat system" "A system in some (but not all) games.  It usually involves weapons, damage, healing, and death.")
   '("Weapon" "An item that avatars can use to damage enemies")
   '("Damage" "Reducing one or more of an avatar's stats (like health or shields).")
   '("Death" "When an avatar is removed from a game or must respawn due to complete loss of health."))
  
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Sword"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, list, keywords."
               #:extra-dollars-for "helping teammates."]{
 @side-note["Tip"]{"Sword" can be anything, like "Amazing Sword of Awesome"}
  
 @(student-should-translate #:english "Make a game that has a sword."
                            #:code 'sword-1)
}


@;----- SILVER SWORD ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Sword"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "new keyword, customizable function names (my-weapon-2)."
               #:extra-dollars-for "helping teammates."]{
 @side-note["Tip"]{Rarity indicates how many there will be in the world. All options are: 'common,
  'uncommon, 'rare, 'epic, 'lengendary.}
 
 @(student-should-translate #:english "Make a game with your own defined sword."
                            #:code 'sword-2)
 @bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

 @DOLLAR

 @(show-kata-code 'sword-2b)
}


@;----- GOLD SWORD ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Sword"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "function names can be anything, draw simple --
                    nothing is saved for later."
               #:extra-dollars-for "helping teammates, creativity."]{
                                                                     
 @side-note["Tip"]{Give students the piskel cheat sheet.}

 @(student-should-translate #:english "Make a game with a fully customized sword."
                            #:code 'sword-3)
}

@;----- PLATINUM SWORD ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'platinum
               #:title "Sword"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do the new keywords mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
                                                   
 @(student-should-translate #:english "Make a game that has a customizable sword in it where you can modify its speed, range, and sprite."
                            #:code 'sword-4)
 }

@;====== PAINT THROWER KATAS ======

@section{Paint Thrower Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'air
               #:title "Paint Thrower"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Melee weapon" "A kind of weapon that is only effective at short range.")
   '("Ranged weapon" "A kind of weapon that is effective at long range."))
  
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'stone
               #:title "Paint Thrower"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Format"]{It's probably not important to officially
  time students on this kata.  It's also okay to encourage lively discussion.
 Some of the pictures are funny, and that's okay.}

 Students should be able to identify each of the following as either
 melee weapons or ranged weapons:

 @(image "doc/imgs/weapons/grenade.gif"
        #:scale .3) 

 @(image "doc/imgs/weapons/weird-pickaxe.gif"
        #:scale .2) 

 @(image "doc/imgs/weapons/long-range.gif"
        #:scale .8) 

 @(image "doc/imgs/weapons/pickaxe.gif"
         #:scale .5) 

 @(image "doc/imgs/weapons/rocket.gif"
         #:scale .4) 
 }

@;----- BRONZE PAINT THROWER ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Paint Thrower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, list, keywords"
               #:extra-dollars-for "helping teammates."]{
 @side-note["Tip"]{Remember, keyword arguments (the parts of the code that start with "#:") are optional!)}

 @(student-should-translate #:english "Make a game that has a paint thrower in it."
                            #:code 'paint-thrower-1)
}


@;----- SILVER PAINT THROWER ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Paint Thrower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "(my-weapon-3) could be anything; you could rename it to (paint-spitter)"
               #:extra-dollars-for "bonus code, helping teammates."]{
                                       
 @side-note["Hint"]{rarity levels are 'common, 'uncommon, 'rare, 'epic, 'legendary. Rarity is related to how many will spawn in the world!}

 @(student-should-translate #:english "Make a game with your own defined paint thrower with customizable rarity."
                            #:code 'paint-thrower-2)

 @bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

 @DOLLAR

 @(show-kata-code 'paint-thrower-2-bonus)
}


@;----- GOLD PAINT THROWER ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Paint Thrower"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-paint) can be renamed to anything you'd like!"
               #:extra-dollars-for "helping teammates, creativity."]{
                                       
 @side-note["Tip"]{Use the piskel cheat sheet! Have them draw fast & simple - they're not going to keep it!}

 @(student-should-translate #:english "Make a game that has a customizable paint thrower in it where you can modify the damage and durability of the paint."
                            #:code 'paint-thrower-3)
}


@;----- PLATINUM PAINT THROWER ------

@camp-jam-kata[#:document-level subsection
               #:difficulty    'platinum
               #:title "Paint Thrower"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do the new keywords mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
 @(student-should-translate #:english  "Make a game that has a customizable paint thrower in it where you can modify the speed, range, and sprite of the paint."
                            #:code 'paint-thrower-4)
}


@include-section["avatar-katas.scrbl"]
@include-section["enemy-katas.scrbl"]
