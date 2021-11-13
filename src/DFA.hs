module DFA where

import Data.HashSet (HashSet(..))

type Delta a b = a -> b -> a

data DFA a b = DFA (Delta a b) a (HashSet a)

simulate :: DFA a b -> [b] -> Bool
simulate (DFA delta initialState acceptStates) string = False