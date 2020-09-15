module Deck where

import Data.List ( sortBy )
import Data.Ord ( comparing )
import System.Random

data Rank = Dois | Três | Quatro | Cinco | Seis | Sete | Oito | Nove | Dez
          | Valete | Rainha | Rei | Ás
     deriving (Eq, Ord, Enum)

instance Show Rank where
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
         show Ás               = "A"

data Naipe = Copas | Ouros | Paus | Espadas 
     deriving (Show, Eq, Enum)

data Carta = Carta { rank :: Rank, naipe :: Naipe } | CartaVazia
     deriving (Eq)

instance Show Carta where
         show CartaVazia = "--"
         show carta = show (rank carta) ++ [head $ show $ naipe carta]

baralho :: [Carta]
baralho = [ Carta rank naipe
            | naipe <- [Copas .. Espadas]
            , rank <- [Dois .. Ás] ]

embaralhar :: StdGen -> [a] -> [a]
embaralhar g es = map snd $ sortBy (comparing fst) $ zip rs es
               where rs = randoms g :: [Integer]

do_shuffle :: IO [Carta]
do_shuffle = do gen <- getStdGen
                return (embaralhar gen baralho)

deal :: Int -> [Carta] -> ([Carta], [Carta])
deal n deck = splitAt n deck

do_deal:: Int -> [Carta] -> IO ([Carta], [Carta])
do_deal n deck = do return (deal n deck)



-- Original source code from https://github.com/msabramo/Haskell-Poker/blob/master/PlayingCards.hs