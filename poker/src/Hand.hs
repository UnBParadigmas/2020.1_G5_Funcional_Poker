module Hand where

import Deck


type Mao = [Carta]

comprarCartas :: Int -> Int -> Deck -> ([Mao], Deck)
