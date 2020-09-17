module Hands where

import Data.List 
import Data.Ord
import Data.Function

import Deck

data Mao = Vazio | Add Carta Mao
    deriving Show