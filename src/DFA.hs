module DFA
  ( Delta
  , DFA(..)
  , simulate
  ) where

import Data.Hashable (Hashable)
import Data.HashSet (HashSet(..), member)

type Delta a b = a -> b -> a

data DFA a b = DFA
  { delta :: Delta a b
  , initialState :: a
  , acceptStates :: (HashSet a)
  }

simulate :: (Eq a, Hashable a) => DFA a b -> [b] -> Bool
simulate (DFA delta initialState acceptStates) string =
  let finalState = foldl delta initialState string
  in member finalState acceptStates