# DFA Simulator

## Introduction

A deterministic finite automaton is a 5-tuple (`Q`, `Σ`, `δ`, `q0`, `F`), where
- `Q` is a finite set called the states
- `Σ` is a finite set called the alphabet
- `δ`: `Q x Σ` -> `Q` is the transition function
- `q0` in `Q` is the start state, and
- `F` (a subset of `Q`) is the set of accept states

An example of how to define and simulate your own DFA is provided in the `test` directory.

## Getting Started

Build the project with

```bash
$ stack build
```

Test the project with

```bash
$ stack test
```