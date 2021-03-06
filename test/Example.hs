{-# LANGUAGE DeriveGeneric #-}

module Example
  ( machine
  , Alphabet(..)
  ) where

import Data.Hashable (Hashable)
import Data.HashSet (fromList, HashSet)
import GHC.Generics (Generic)

import DFA (Delta, DFA(..))

data State = Q1 | Q2 | Q3
  deriving (Eq, Generic)

instance Hashable State

data Alphabet = Zero | One

transition :: (Delta State Alphabet)
transition state input =
  case state of
    Q1 -> case input of
      Zero -> Q2
      One -> Q3
    Q2 -> case input of
      Zero -> Q3
      One -> Q1
    Q3 -> Q3

machine :: DFA State Alphabet
machine = DFA
  { delta = transition
  , initialState = Q1
  , acceptStates = fromList [Q1]
  }