module Main where

import Test.HUnit

import DFA (simulate)
import Example

main :: IO Counts
main = runTestTT tests

tests :: Test
tests = TestList [

  TestCase $
    assertEqual "example accepts the empty string"
    True (simulate machine []),

  TestCase $
    assertEqual "example rejects the string 0"
    False (simulate machine [Zero]),

  TestCase $
    assertEqual "example rejects the string 1"
    False (simulate machine [One]),

  TestCase $
    assertEqual "example accepts the string 01"
    True (simulate machine [Zero, One]),

  TestCase $
    assertEqual "example rejects the string 10"
    False (simulate machine [One, Zero]),

  TestCase $
    assertEqual "example rejects the string 00"
    False (simulate machine [Zero, Zero]),

  TestCase $
    assertEqual "example rejects the string 010"
    False (simulate machine [Zero, One, Zero]),

  TestCase $
    assertEqual "example accepts the string 0101"
    True (simulate machine [Zero, One, Zero, One]),

  TestCase $
    assertEqual "example rejects the string 01011"
    False (simulate machine [Zero, One, Zero, One, One]),

  TestCase $
    assertEqual "example rejects the string 00011"
    False (simulate machine [Zero, Zero, Zero, One, One]),

  TestCase $
    assertEqual "example accepts the string 010101"
    True (simulate machine [Zero, One, Zero, One, Zero, One])

  ]