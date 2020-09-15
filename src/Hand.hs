module Hands where

import Data.List 
import Data.Ord
import Data.Function

import Deck

data TipoMao = Nada | Par | DoisPares | Trio | Quadra | Flush | FullHouse | StraightFlush
    deriving (Show, Eq, Ord)

