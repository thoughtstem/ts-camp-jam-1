#lang scribble/manual

@(define DOLLAR (image "kata-definitions/img/ts-dollar.png"
                       #:scale 0.15))

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

@section{Melee Battle Mode Katas}

@subsection{Avatar Katas}

@bold{Bronze Avatar Kata} (5 minutes)

@(image "kata-definitions/img/ts-dollar.png")

Within five minutes, the student can translate a sentence of this type:

"Make a game with an avatar."

To code of this type:

@;need larger, more clearly separated image

@(image "kata-definitions/img/avatar-1.png")

@;tab in? otherwise format to separate from kata

@italic{Review/Introduce}

        @itemlist[@item{@italic{What does each part of #lang ts-camp-jam-1 mean?
                    (language, thoughtstem, what we are doing, first 1)}}
                  @item{@italic{What is an avatar? (playable character)}}
                  @item{@italic{What is a keyword? (optional additional info)}}
                  @item{@italic{How do you know it's a keyword? (#:)}}]

@italic{Bonus Dollars -- feel free to give out extra dollars for:}

        @itemlist[@item{@italic{Helping out teammates.}}]


@bold{Silver Avatar Kata} (5 minutes)

Within five minutes, the student can translate a sentence of this type:

"Make a game with a blue circle avatar."

To code of this type:

@(image "kata-definitions/img/avatar-2.png")

@italic{Review/Introduce}

        @itemlist[@item{@italic{How many keywords now? (2 - #:avatar & #:sprite)}}
                  @item{@italic{What info does the circle fuction need?
                    (circle, size, fill option, color)}}]

@italic{Bonus Dollars -- feel free to give out extra dollars for:}

        @itemlist[@item{@italic{Helping out teammates.}}
                  @item{@italic{Trying other colors.}}
                  @item{@italic{Trying other shapes: triangle, square, star,
                    rectangle (needs 2 numbers for size), ellipse (2 numbers).}}]


@bold{Gold Avatar Kata} (10 minutes) 

Within ten minutes, the student can translate a sentence of this type:

@margin-note*{Use the piskel cheat sheet.}

@italic{Make a game with a simple custom avatar created in Piskel.}

To code of this type:

@(image "kata-definitions/img/avatar-3.png")

@italic{Review/Introduce}

        @itemlist[@item{@italic{(my-avatar) can be anything, like (cool-dude).}}
                  @item{@italic{}}]

@italic{Bonus Dollars -- feel free to give out extra dollars for:}

        @itemlist[@item{@italic{Helping out teammates.}}
                  @item{@italic{Trying other colors.}}
                  @item{@italic{Trying other shapes: triangle, square, star,
                    rectangle (needs 2 numbers for size), ellipse (2 numbers).}}]

@subsection{Enemy Katas}

@subsubsection{Bronze Enemy Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} Help them memorize the code! What is lang? ts? camp-jam-1? battle-arena-game? enemy?}
@margin-note*{@bold{Extra Dollars for:} Helping teammates}

@DOLLAR

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an enemy in it.}

To code of this type:

@(image "kata-definitions/img/enemy-1.png")

@subsubsection{Silver Enemy Kata (5 minutes)}

@margin-note*{@bold{Review/Introduce:} The symbol "#:" denotes a keyword argument. These are always optional! Talk about the 5 keywords here!}
@margin-note*{@bold{Review/Introduce:} (my-enemy) can be anything! It could be (bad-guy) instead!}

@DOLLAR @DOLLAR @DOLLAR

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a customizable enemy in it."

To code of this type:

@margin-note*{@bold{Hint:} AI levels are: 'easy, 'medium, 'hard}

@(image "kata-definitions/img/enemy-2.png")

@subsubsection{Gold Enemy Kata (10 minutes)}

@margin-note*{@bold{Hint:} Use the piskel cheat sheet!}
@margin-note*{@bold{Hint:} Have them draw fast & simple - they're not going to keep it!}
@margin-note*{@bold{Extra Dollars for:} Bonus code or creativity}

@DOLLAR @DOLLAR @DOLLAR @DOLLAR @DOLLAR

Within ten minutes, the student can translate an English sentence of this type:

@italic{Make a game that has a custom image as an enemy.}

To code of this type:

@(image "kata-definitions/img/enemy-3.png")

@bold{Bonus Code:} Have them create their own custom sprite sheet to earn an extra dollar!

@DOLLAR

@(image "kata-definitions/img/enemy-3-bonus.png")

@subsection{Spear Katas}

Katas here

@subsection{Sword Katas}

Katas here

@subsection{Paint Thrower Katas}

Katas here

@section{???}

@(image "doc/imgs/avatar-dance.gif")

@(image "kata-definitions/img/enemy-npc.png")

  

@(image "doc/imgs/bus-drop.gif")

@(image "doc/imgs/jetpack-death.gif")


@(image "doc/imgs/building-while-running.gif")

@(image "doc/imgs/wall-shoot.gif")
