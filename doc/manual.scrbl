#lang scribble/manual

@(require ts-kata-util racket)
@(define DOLLAR (image "kata-definitions/img/ts-dollar.png"
                       #:scale .15))

@(define (dollars (n 1))
   (map (thunk* DOLLAR) (range n)))

@(define (camp-jam-kata #:document-level (level subsubsection)
                        #:difficulty (difficulty 'bronze)
                        #:title (title "Avatar")
                        #:time-limit (time-limit 10)
                        #:dollars    (num-dollars 1)
                        #:review/introduce (review-introduce "concepts to review...")
                        #:extra-dollars-for (extra-dollars-for "helping teammates...")
                        . body)

   @kata[#:document-level level
         #:difficulty    difficulty
         #:title title
         #:time-limit time-limit]{

 @(dollars num-dollars)
  
 @side-note["Review/Introduce" review-introduce]

 @side-note["Extra Dollars for" extra-dollars-for]
                               
 @body
 })

@title{Game Design through Fortnite}

Game design is an art.  Two of the best ways
of learning that art are:

@itemlist[@item{Studying a great game (like Fortnite).}
          @item{Trying to build similar games.}]

Keep in mind, though, that great games (like Fortnite)
take many years and hundreds of talented people to make.

As a beginning programmer, you must remember that
you'll be able to make games like that @emph{one day}.
But you'll have to work your way up.  You'll have
to acquire new skills.  You'll have to practice.
You'll have to work hard.

Take heart, though!

The road to learning the art of game design
is a beautiful road.  You'll start learning cool
things right away.  And even though you won't
be able to make Fortnite right away, you'll
be able to make cool things right away. 

Just keep practicing.  Keep taking joy in the things
you're able to make.  One day, you'll be able to
make games like Fortnite.  Or perhaps...
even better ones!




@section{Meta Katas}
clone-entity
<Core values.>

<Something about hard work.>

<Anticipate student wories:
  * Not playing fortnite today
  * 2D vs 3D...>

<Vocab?  Game moments?>


Battle:
  Mele
  Ranged

Battle Gear:
  Potions/Powerups
  Armor
  Weapons?

Fort building:
  Offensive
  Defensive

@;====== MELEE BATTLE MODE KATAS ======
@;============== DAY 1 ================
@section{Melee Battle Mode Katas}

@;====== AVATAR KATAS =======
@subsection{Avatar Katas}

@camp-jam-kata[#:document-level subsubsection
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5
               #:dollars 1
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, avatar, keyword."
               #:extra-dollars-for "helping teammates"]{
 @(student-should-translate #:english "Make a game with an avatar"
                            #:code 'avatar-1)
}


@;----- SILVER AVATAR ------

@camp-jam-kata[#:document-level subsubsection
               #:difficulty    'silver
               #:title "Avatar"
               #:time-limit 5
               #:dollars 3
               #:review/introduce "new keyword, the circle function & its parameters."
               #:extra-dollars-for "helping teammates, trying new colors or shapes"]{

 @side-note["Additional shapes"]{triangle, square, star, rectangle (needs
  2 numbers), ellipse (needs 2 numbers).}
  
 @student-should-translate[#:english "Make a game with a blue circle avatar"
                           #:code 'avatar-2]
}


@;----- GOLD AVATAR ------
@subsubsection{Gold Avatar Kata (10 minutes)}

@margin-note*{@bold{Review/Introduce:} (my-avatar) can be anything, draw simple --
                    nothing is saved for later.}

@margin-note*{@bold{Extra Dollars for:} helping teammates, creativity, animation.}

@margin-note*{Give students the piskel cheat sheet.}

@DOLLAR @DOLLAR @DOLLAR @DOLLAR @DOLLAR

Within ten minutes, the student can translate a sentence of this type:

@italic{Make a game with a simple custom avatar created in Piskel.}

To code of this type:

@(show-kata-code 'avatar-3)

If a student creates an animation, they can use the following code instead:

@(show-kata-code 'avatar-3b)

Additional keywords for custom-avatar:

@(show-kata-code 'avatar-3c)

@;====== ENEMY KATAS ======
@subsection{Enemy Katas}

@;----- BRONZE ENEMY ------
@subsubsection{Bronze Enemy Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} Help them memorize the code! What is lang? ts? camp-jam-1? battle-arena-game? enemy?}
@margin-note*{@bold{Extra Dollars for:} Helping teammates}

@DOLLAR

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an enemy in it.}

To code of this type:

@(show-kata-code 'enemy-1)

@;----- SILVER ENEMY ------
@subsubsection{Silver Enemy Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} The symbol "#:" denotes a keyword argument. These are always optional! Talk about the 5 keywords here!}
@margin-note*{@bold{Review/Introduce:} (my-enemy) can be anything! It could be (bad-guy) instead!}

@DOLLAR @DOLLAR @DOLLAR

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a customizable enemy in it."

To code of this type:

@margin-note*{@bold{Hint:} AI levels are: 'easy, 'medium, 'hard}

@(show-kata-code 'enemy-2)

@;----- GOLD ENEMY ------
@subsubsection{Gold Enemy Kata (10 minutes)}

@margin-note*{@bold{Hint:} Use the piskel cheat sheet!}
@margin-note*{@bold{Hint:} Have them draw fast & simple - they're not going to keep it!}
@margin-note*{@bold{Extra Dollars for:} Bonus code or creativity}

@DOLLAR @DOLLAR @DOLLAR @DOLLAR @DOLLAR

Within ten minutes, the student can translate an English sentence of this type:

@italic{Make a game that has a custom image as an enemy.}

To code of this type:

@(show-kata-code 'enemy-3)

@bold{Bonus Code:} Have them create their own custom sprite sheet to earn an extra dollar!

@DOLLAR

@(show-kata-code 'enemy-3-bonus)

@;====== SPEAR KATAS ======
@subsection{Spear Katas}

@;----- BRONZE SPEAR ------
@subsubsection{Bronze Spear Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} Help them memorize the code! What is lang? ts? camp-jam-1? battle-arena-game? weapon?}
@margin-note*{@bold{Hint:} "Spear" can be anything! Even "Amazspear"!}
@margin-note*{@bold{Extra Dollars for:} Helping teammates!}

@DOLLAR

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a spear in it."

To code of this type:

@(show-kata-code 'spear-1)

@;----- SILVER SPEAR ------
@subsubsection{Silver Spear Kata (5 minutes)}

@margin-note*{@bold{Hint:} (my-weapon) could be anything; you could rename it to (sharp-stick)}
@margin-note*{@bold{Hint:} rarity levels are 'common, 'uncommon, 'rare, 'epic, 'legendary. Rarity is related to how many will spawn in the world!}

@DOLLAR @DOLLAR @DOLLAR

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a customizable spear in it."

To code of this type:

@(show-kata-code 'spear-2)

@bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

@DOLLAR

@(show-kata-code 'spear-2-bonus)

@;----- GOLD SPEAR ------
@subsubsection{Gold Spear Kata (10 minutes)}

@margin-note*{@bold{Review/Introduce:} (my-weapon-1) and (my-spear) can be renamed to anything you'd like!}
@margin-note*{@bold{Hint:} Use the piskel cheat sheet! Have them draw fast & simple - they're not going to keep it!}

@DOLLAR @DOLLAR @DOLLAR @DOLLAR @DOLLAR

Within ten minutes, the student can translate an English sentence of this type:

"Make a game that has a customizable spear in it where you can modify its damage and durability."

To code of this type:

@(show-kata-code 'spear-3)

@bold{Bonus Code:} Have them add additional keywords to (spear) to earn an extra dollar!

@DOLLAR

@(show-kata-code 'spear-3-bonus)

@;====== SWORD KATAS ======
@subsection{Sword Katas}

@;----- BRONZE SWORD ------
@subsubsection{Bronze Sword Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} meaning of #lang ts-camp-jam-1, battle-arena-game, list, keywords.}

@margin-note*{@bold{Extra Dollars for:} helping teammates.}

@margin-note*{"Sword" can be anything, like "Amazing Sword of Awesome"}

@DOLLAR

Within five minutes, the student can translate a sentence of this type:

@italic{Make a game that has a sword.}

To code of this type:

@(show-kata-code 'sword-1)

@;----- SILVER SWORD ------
@subsubsection{Silver Sword Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} new keyword, customizable function names (my-weapon-2).}

@margin-note*{@bold{Extra Dollars for:} helping teammates.}

@margin-note*{Rarity indicates how many there will be in the world. All options are: 'common,
              'uncommon, 'rare, 'epic, 'lengendary}

@DOLLAR @DOLLAR @DOLLAR

Within five minutes, the student can translate a sentence of this type:

@italic{Make a game with your own defined sword.}

To code of this type:

@(show-kata-code 'sword-2)

@bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

@DOLLAR

@(show-kata-code 'sword-2b)

@;----- GOLD SWORD ------
@subsubsection{Gold Sword Kata (10 minutes)}

@margin-note*{@bold{Review/Introduce:} function names can be anything, draw simple --
                    nothing is saved for later.}

@margin-note*{@bold{Extra Dollars for:} helping teammates, creativity.}

@margin-note*{Give students the piskel cheat sheet.}

@DOLLAR @DOLLAR @DOLLAR @DOLLAR @DOLLAR

Within ten minutes, the student can translate a sentence of this type:

@italic{Make a game with a fully customized sword.}

To code of this type:

@(show-kata-code 'sword-3)

@bold{Bonus Code:} Have them add additional keywords to (sword) to earn an extra dollar!

@DOLLAR

@(show-kata-code 'sword-3b)

@subsection{Paint Thrower Katas}

@subsubsection{Bronze Paint Thrower Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} Help them memorize the code! What is lang? ts? camp-jam-1? battle-arena-game? weapon?}
@margin-note*{Remember, keywords (the parts of the code that start with "#:" are optional!)}
@margin-note*{@bold{Extra Dollars for:} Helping teammates!}

@DOLLAR

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a paint thrower in it."

To code of this type:

@(show-kata-code 'paint-thrower-1)

@subsubsection{Silver Paint Thrower Kata (5 minutes)}

@margin-note*{@bold{Hint:} (my-weapon-3) could be anything; you could rename it to (paint-spitter)}
@margin-note*{@bold{Hint:} rarity levels are 'common, 'uncommon, 'rare, 'epic, 'legendary. Rarity is related to how many will spawn in the world!}

@DOLLAR @DOLLAR @DOLLAR

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a paint thrower in it with customizable rarity."

To code of this type:

@(show-kata-code 'paint-thrower-2)

@bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

@DOLLAR

@(show-kata-code 'paint-thrower-2-bonus)

@subsubsection{Gold Paint Thrower Kata (10 minutes)}

@margin-note*{@bold{Review/Introduce:} (my-paint) can be renamed to anything you'd like!}
@margin-note*{@bold{Hint:} Use the piskel cheat sheet! Have them draw fast & simple - they're not going to keep it!}

@DOLLAR @DOLLAR @DOLLAR @DOLLAR @DOLLAR

Within ten minutes, the student can translate an English sentence of this type:

"Make a game that has a customizable paint thrower in it where you can modify its damage and durability."

To code of this type:

@(show-kata-code 'paint-thrower-3)

@bold{Bonus Code:} Have them add additional keywords to (paint) to earn an extra dollar! Or award, bonus dollars for creativity!

@DOLLAR

@(show-kata-code 'paint-thrower-3-bonus)





@(image "doc/imgs/avatar-dance.gif")

@(show-kata-code 'enemy-npc)

  

@(image "doc/imgs/bus-drop.gif")

@(image "doc/imgs/jetpack-death.gif")


@(image "doc/imgs/building-while-running.gif")

@(image "doc/imgs/wall-shoot.gif")
