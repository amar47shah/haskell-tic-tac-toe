module Game.Context where

import Game.Player
import Game.Board

data GameContext = GameContext { board :: Board, player1 :: Player, player2 :: Player, currentPlayer :: Player } deriving (Show)

newGameContext :: Player -> Player -> Int -> GameContext
newGameContext player1 player2 boardSize = GameContext
  { player1       = player1
  , player2       = player2
  , board         = newBoard boardSize
  , currentPlayer = player1
  }
