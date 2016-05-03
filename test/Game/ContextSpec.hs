module Game.ContextSpec (main, spec) where

import SpecHelper

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "newGameContext" $ do
    it "returns a new Game Context" $ do
      let newPlayer1Type = Human
      let newPlayer2Type = Human
      let newPlayer1Token = 'x'
      let newPlayer2Token = 'o'
      let newPlayer1 = Player { token = newPlayer1Token, playerType = newPlayer1Type }
      let newPlayer2 = Player { token = newPlayer2Token, playerType = newPlayer2Type }
      let gameContext = newGameContext newPlayer1 newPlayer2
      player1 gameContext `shouldBe` newPlayer1
      player2 gameContext `shouldBe` newPlayer2
      board gameContext `shouldBe` newBoard 3

