module Deck where

data Naipe = Paus | Ouros | Copas | Espadas deriving (Eq, Ord, Show)

data Valor = Dois | Três | Quatro | Cinco | Seis | Sete | Oito | Nove | Dez | Valete | Rainha | Rei | Ás deriving (Eq, Ord, Enum)

data Carta = Carta { 
    valor :: Valor
  , naipe :: Naipe
} deriving (Ord, Eq)

instance Show Valor where
    show Dois           = "2"
    show Três           = "3"
    show Quatro         = "4"
    show Cinco          = "5"
    show Seis           = "6"
    show Sete           = "7"
    show Oito           = "8"
    show Nove           = "9"
    show Dez            = "10"
    show Valete         = "J"
    show Rainha         = "Q"
    show Rei            = "K"
    show Ás             = "A"


baralho :: [Carta]
baralho = [ Carta valor naipe
            | naipe  <- [Paus, Ouros, Copas, Espadas]
            , valor  <- [Dois .. Ás] ]