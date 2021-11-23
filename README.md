# DFA Simulator

A deterministic finite automaton (DFA) is a 5-tuple (`Q`, `Σ`, `δ`, `q0`, `F`), where
- `Q` is a finite set called the states
- `Σ` is a finite set called the alphabet
- `δ`: `Q x Σ` -> `Q` is the transition function
- `q0` in `Q` is the start state, and
- `F` (a subset of `Q`) is the set of accept states

Refer to [1] for a complete discussion on DFAs.

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

## References

[1] Sipser, Michael (1997). Introduction to the Theory of Computation. Boston: PWS. ISBN 0-534-94728-X.. Section 1.1: Finite Automata, pp. 31–47.