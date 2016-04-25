# Tic Tac Toe

## Installation Instructions

- Clone this repository

  `$ git clone github.com/edwardkerry/tictactoe`

- Change into directory

  `$ cd tictactoe`

- Run tests with RSpec (run `$ bundle` before to install)

  `$ rspec`

- launch tictactoe

  `$ ruby ./lib/tictactoe.rb`

## Game Instructions

- Choose X or 0
- Choose your location, without spaces!

### Design description

- The game is initiated by the TicTacToe class, which is responsible for instantiating the other classes and calling `start_game` on the Interface class.
- The Interface class is responsible for outputting to the console, and collecting user input for other classes to use.
- The Game class is responsible for passing information on the state of the board and the player's symbol between the Interface and Board. Eventually it will include logic to assess the state of the board and declare a winner.
- The Board class is responsible for storing the current game state as a 2d array, and creating a frame for this array. When it receives input from the user it updates the array.
- The Player class is responsible for storing the chosen symbol, X or O.

The program was test-driven. Other than TicTacToe, the other classes are independent from one another and all tests feature dependency injection.

### User Stories

#### Completed
```
As a player,
So I can make my mark,
I want to select X or O
```

```
As a player,
So I can plan my move,
I want to see the board
```

```
As a player,
So I can make a move,
I want to select the best spot
```

```
As a player,
So I can have fun,
I want the computer to fight back!
```

```
As a player,
So I can win or lose,
I want 3 in a row to signal the game ending
```

```
As a player,
So I don't have to worry too much,
I want to be able to enter my coordinates as '3 A' or 'A3' etc
```

#### To do

```
As a player,
So I don't make an illegal move,
I want to be prevented from choosing a non-existent spot
```

```
As a player,
So I can't make an illegal move,
I want to be prevented from choosing a taken spot
```

```
As a player,
So a game ends when all spaces are filled,
I want a stalemate to be declared
```

```
As a player,
So I can really have fun,
I want the computer to make intelligent choices
```
