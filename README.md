# Verilog Codes and Test Benches for Basic Logic Gates

Each design file `x.v` has a testbench `tb_x.v` in the same folder.

| Folder | What's inside |
|---|---|
| `gate_level/` | AND, OR, NOT, XOR, NAND using built-in gate primitives |
| `dataflow/` | Same gates using `assign` (continuous assignment) |
| `behavioral/` | Same gates using `always @(*)` blocks |
| `exp17/` | Exp 17: SOP with logical operators, SOP with conditional operator, POS with gate primitives |

## Run a simulation

Install [Icarus Verilog](https://bleyer.org/icarus/) (Windows) or `sudo apt install iverilog` (Linux), then:

```bash
git clone <this repo URL>
cd verilog-logic-gates
iverilog -o sim gate_level/and_gate.v gate_level/tb_and_gate.v
vvp sim
```

Swap in any design + testbench pair. You can also paste a pair into [EDA Playground](https://www.edaplayground.com/) and skip installing anything.

## Note on Exp 17

`sop_conditional.v` and `pos_gate_level.v` give F = 1 for minterms 1, 2, 5, 7.
`Logical_Operators_SOP.v` (`~B&C | ~A&B | A&C`) also gives 1 at minterm 3 (A=0, B=1, C=1),
because the `~A&B` term covers 011. If all three should match, use `~A & B & ~C` for that term.
