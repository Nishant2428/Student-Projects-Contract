# StudentProjects Smart Contract

## Overview

The `StudentProjects` smart contract manages student projects on the Ethereum blockchain. It allows students to add, delete, and retrieve project details. Ownership of the contract can be transferred to another address using the `transferOwnership` function.

## Contract Details

- **State Variables:**
  - `student`: Address of the student owner.
  - `projectCount`: Total count of projects.
  - `projects`: Mapping of project IDs to `Project` structs containing `id`, `name`, and `description`.

- **Functions:**
  - `addProject(string name, string description)`: Adds a new project with a name and description.
  - `deleteProject(uint256 id)`: Deletes a project by ID.
  - `getProject(uint256 id)`: Retrieves project details by ID.
  - `transferOwnership(address newStudent)`: Transfers ownership of the contract to a new student address.

- **Error Handling:**
  - Uses `require` to validate conditions before executing functions.
  - Uses `revert` to revert state changes when conditions are not met.
  - Uses `assert` to validate internal consistency, ensuring critical conditions are never false.

## Usage

### Prerequisites

Ensure you have an Ethereum development environment set up with Solidity compiler version ^0.8.0.

### Deployment

1. Compile the `StudentProjects.sol` contract using your preferred Solidity compiler.
2. Deploy the compiled contract to an Ethereum network of your choice (e.g., Remix, Truffle, etc.).

### Interacting with the Contract

- **Adding a Project:**
  Call the `addProject` function with the project name and description to add a new project.

- **Deleting a Project:**
  Call the `deleteProject` function with the project ID to delete an existing project.

- **Retrieving a Project:**
  Call the `getProject` function with the project ID to retrieve details of a specific project.

- **Transferring Ownership:**
  Use the `transferOwnership` function to transfer ownership of the contract to another student's address.
