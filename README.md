# README: Quadruped Robot Single-Leg Lagrangian Symbolic Formulas Generator

This MATLAB program generates symbolic Lagrangian formulas for a single leg of a quadruped robot.
With just one click, the code calculates the kinetic energy, potential energy, and the torque required for each joint.

![v2-4e013d6e85ff5644d284322c8881c04f_720w](https://user-images.githubusercontent.com/35834577/234191990-13d81b4b-57dd-49fe-b3d4-26ea5a623463.png)

## Structure and Usage

- `simple`: Simplified functions for the calculations
- `genTransform`: Functions to generate transformation matrices

### Requirements

- MATLAB

### Directory Structure

- `simple`: Simplified functions for the calculations
- `genTransform`: Functions to generate transformation matrices

## Equations

We use the following formula for the calculations:

\frac{\mathrm{d}}{\mathrm{d} t}\left(\frac{\partial L}{\partial q}\right)-\frac{\partial L}{\partial q}=Q

After extracting the terms with 𝑞̈ and 𝑞̇, we obtain the standard form:

D \ddot{q}+C \dot{q}+G=\tau

### Main Script

The main script (`energyOfLagrange.m`) performs the following calculations:

1. Calculate the rotational kinetic energy of the leg
2. Calculate the translational kinetic energy of the leg
3. Calculate the potential energy due to gravity acting on the leg
4. Use Lagrange's equations to calculate the torque required at each joint
5. Simplify the expressions and extract the matrices D and C, and calculate G
6. Calculate the joint accelerations using the inverse Jacobian method

### How to Run

1. Clone the repository or download the code files
2. Open MATLAB and navigate to the code directory
3. Run the `energyOfLagrange.m` script

