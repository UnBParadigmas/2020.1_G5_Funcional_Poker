module Deck where

import Data.List ( sortBy )
import Data.Ord ( comparing )
import System.Random

data Naipe = Copas | Ouros | Paus | Espadas 
     deriving (Eq, Ord, Bounded, Enum)

data Valor = Dois | Três | Quatro | Cinco | Seis
           | Sete | Oito | Nove | Dez | Valete
           | Rainha | Rei | Ás
           deriving(Eq, Ord, Bounded, Enum)

instance Show Valor where
         show Dois              = "2"
         show Três              = "3"
         show Quatro            = "4"
         show Cinco             = "5"
         show Seis              = "6"
         show Sete              = "7"
         show Oito              = "8"
         show Nove              = "9"
         show Dez               = "10"
         show Valete            = "J"
         show Rainha            = "Q"
         show Rei               = "K"
         show Ás                = "A"

instance Show Naipe where
         show Copas             = "C"
         show Ouros             = "O"
         show Paus              = "P"
         show Espadas           = "E"

data Carta = Carta Valor Naipe
     deriving (Show)

totalCartas :: (Bounded a, Enum a) => [a]
totalCartas = [minBound..maxBound]

type Deck = [Carta]

deck :: Deck
deck = [Carta r s | r <- totalCartas, s <- totalCartas]

