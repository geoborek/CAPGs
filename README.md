# Cost-Adversarial-Planning-Games

The implementation for the paper

R. Horcik, A. Torralba, P. Rytir, L. Chrpa, S. Edelkamp. Optimal Mixed Strategies for Cost-Adversarial Planning Games. ICAPS 2022

The planning domains are stored in the folder `pddl`.

To run the double oracle on a planning task, one needs Fast Downward (https://www.fast-downward.org/).

## Basic usage

```
python double_oracle_2.0.py domain-file.pddl problem-file.pddl path-to-fast-downward
```
