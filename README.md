# README: Quadruped Robot Single-Leg Lagrangian Symbolic Formulas Generator

This MATLAB program generates symbolic Lagrangian formulas for a single leg of a quadruped robot. The code calculates the kinetic energy, potential energy, and the torque required for each joint, considering the leg's rigid body dynamics.

## Structure and Usage


# README: Simple Legged Robot Dynamics and Control

This MATLAB code is a simple implementation of legged robot dynamics and control, focusing on a single leg with three joints. The code calculates the kinetic energy, potential energy, and the torque required for each joint, considering the leg's rigid body dynamics.

## Structure and Usage

### Requirements

- MATLAB

### Directory Structure

- `simple`: Simplified functions for the calculations
- `genTransform`: Functions to generate transformation matrices

### Main Script

The main script (`energyOfLagrange.m`) performs the following calculations:

1. Calculate the rotational kinetic energy of the leg
2. Calculate the translational kinetic energy of the leg
3. Calculate the potential energy due to gravity acting on the leg
4. Use Lagrange's equations to calculate the torque required at each joint
5. Simplify the expressions and extract the matrices D and C, and calculate G
6. Calculate the joint accelerations using the inverse Jacobian method

### Functions

- `genBi2AbadMetrix.m`: Generates transformation matrix from body to Abad frame
- `genBi2HipMetrix.m`: Generates transformation matrix from body to hip frame
- `genBi2KneeMetrix.m`: Generates transformation matrix from body to knee frame
- `calOmigaFromRotMat.m`: Calculates angular velocity from rotation matrix
- `Jocobian.m`: Calculates the Jacobian matrix of a given position
- `equationsToMatrix_NonLinear.m`: Converts nonlinear equations to matrix form

### How to Run

1. Clone the repository or download the code files
2. Open MATLAB and navigate to the code directory
3. Run the `energyOfLagrange.m` script

