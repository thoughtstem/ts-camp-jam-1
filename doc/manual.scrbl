#lang scribble/manual

@require[pict]

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

@(require ts-kata-util)


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

Within five minutes, the student can translate a sentence of this type:

"Make a game with an avatar."

To code of this type:

@;need larger, more clearly separated image


@(show-kata-code 'avatar-1)

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

@(show-kata-code 'avatar-2)

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

@(show-kata-code 'avatar-3)

@italic{Review/Introduce}

        @itemlist[@item{@italic{(my-avatar) can be anything, like (cool-dude).}}
                  @item{@italic{}}]

@italic{Bonus Dollars -- feel free to give out extra dollars for:}

        @itemlist[@item{@italic{Helping out teammates.}}
                  @item{@italic{Trying other colors.}}
                  @item{@italic{Trying other shapes: triangle, square, star,
                    rectangle (needs 2 numbers for size), ellipse (2 numbers).}}]

@subsection{@bold{Enemy Katas}}

@subsubsection{Bronze Enemy Kata (5 minutes)}

To earn this kata image they need to:

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an enemy in it.}

To code of this type:

@(show-kata-code 'enemy-1)

@italic{Review/Introduce}
@itemlist[
 @item{@italic{While the game is loading... Have them memorize the code with you! Other Discussion Topics: What is lang? ts? camp-jam-1? battle-arena-game? enemy?}}
 @item{@italic{After the game is loaded... talk about what students see in the game (what are the game elements?)}}
 @item{@italic{The symbol "#:" denotes a keyword argument. These are always optional!)}}]

@subsubsection{Silver Enemy Kata (5 minutes)}

To earn this kata image they need to:

Within five minutes, the student can translate an English sentence of this type:

"Make a game that has a customizable enemy in it."

To code of this type:

@margin-note*{Hint: AI levels are: 'easy, 'medium, 'hard}

@(show-kata-code 'enemy-2)

@italic{Review/Introduce}
@itemlist[
 @item{@italic{While the code is running, talk about the 5 keywords!}}
 @item{@italic{(my-enemy) can be anything! It could be (bad-guy) instead!}}
 @item{@italic{Remember, keywords are optional - you don't need to use all of them!}}]

@subsubsection{Gold Enemy Kata (10 minutes)}

To earn this kata image they need to:

Within ten minutes, the student can translate an English sentence of this type:

@italic{Make a game that has a custom image as an enemy.}

To code of this type:
@margin-note*{Have students draw fast & simple! They won't keep it. Also, use the piskel cheat sheet.}

@(show-kata-code 'enemy-3)

@italic{Review/Introduce}
@itemlist[
 @item{@italic{(my-avatar) can be anything! You could put (cool-dude) instead!}}]

@subsection{Spear Katas}

Katas here

@subsection{Sword Katas}

Katas here

@subsection{Paint Thrower Katas}

Katas here

@section{???}

@(image "doc/imgs/avatar-dance.gif")

@(show-kata-code 'enemy-npc)

  

@(image "doc/imgs/bus-drop.gif")

@(image "doc/imgs/jetpack-death.gif")


@(image "doc/imgs/building-while-running.gif")

@(image "doc/imgs/wall-shoot.gif")
