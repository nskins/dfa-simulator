module DFA
  ( Delta
  , DFA(..)
  , simulate
  ) where

import Data.Hashable (Hashable)
import Data.HashSet (HashSet(..), member)

type Delta a b = a -> b -> a

data DFA a b = DFA (Delta a b) a (HashSet a)

simulate :: (Eq a, Hashable a) => DFA a b -> [b] -> Bool
simulate (DFA delta initial accepts) string =
  let finalState = foldl delta initial string
  in member finalState accepts