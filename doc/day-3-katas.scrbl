#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== DEFENSIVE BASE KATAS ======
@;============== DAY 3 ================
@title{Defensive Base Katas}


@section{Lava Katas}

@;@camp-jam-kata[#:document-level subsection
               @;#:difficulty    'air
               @;#:title "Lava Pit"
               @;#:time-limit 1
               @;#:dollars 0
               @;#:review/introduce "core values"
               @;#:extra-dollars-for "lively discussion"]{

 @;@side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  @;Help them relate these concepts to games they've played -- both Fortnite and other games.}

 @;Game design vocab!

 @;@(student-should-know-difference-between
   @;'("..." "...")
   @;'("..." "..."))}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Lava Pit"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list, dart."
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
               #:review/introduce "meaning of damage, size, multiple keywords."
               #:extra-dollars-for "helping teammates."]{


 @(student-should-translate #:english "Make a game that has a lava pit with custom damage and size."
                            #:code 'lava-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Lava Pit"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, range."
               #:extra-dollars-for "helping teammates, creativity."]{
  
 @(student-should-translate #:english "Make a game that has a lava pit with custom damage, size, sprite, and range."
                            #:code 'lava-3)
}




@section{Spike Mine Katas}

@;@camp-jam-kata[#:document-level subsection
               @;#:difficulty    'air
               @;#:title "Spike Mine"
               @;#:time-limit 1
               @;#:dollars 0
               @;#:review/introduce "core values"
               @;#:extra-dollars-for "lively discussion"]{

 @;@side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  @;Help them relate these concepts to games they've played -- both Fortnite and other games.}

 @;Game design vocab!

 @;@(student-should-know-difference-between
   @;'("..." "...")
   @;'("..." "..."))}


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
               #:review/introduce "meaning of ..."
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
               #:review/introduce "meaning of ..."
               #:extra-dollars-for "helping teammates, creativity"]{

 @(student-should-translate #:english "Make a game that has a ..."
                            #:code 'lava-3)
}


@section{Spear Tower Katas}

@;@camp-jam-kata[#:document-level subsection
               @;#:difficulty    'air
               @;#:title "Spear Tower"
               @;#:time-limit 1
               @;#:dollars 0
               @;#:review/introduce "core values"
               @;#:extra-dollars-for "lively discussion"]{

 @;@side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  @;Help them relate these concepts to games they've played -- both Fortnite and other games.}

 @;Game design vocab!

 @;@(student-should-know-difference-between
   @;'("..." "...")
   @;'("..." "..."))

 @;Can students share examples of balanced or unbalanced games from their lives?  Is Fortnite perfectly balanced?
@;}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list, dart."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that includes a spear tower."
                            #:code 'spear-tower-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of multiple keywords, range."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a spear tower with a speed of 10 and a range of 20."
                            #:code 'spear-tower-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{
    
 @(student-should-translate #:english "Make a game that has a spear tower with a custom spear image, damage level, range and speed"
                            #:code 'spear-tower-3)
}


@include-section["avatar-katas.scrbl"]
@include-section["enemy-katas.scrbl"]


