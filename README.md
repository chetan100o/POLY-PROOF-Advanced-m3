# polygon 


# ZK-SNARK-Assessment

This repository is for the project assessment of the project of the 3rd module of : POLY PROOF: Advanced course of Metacrafters academy . The purpose of creating this to prove my learning and to showcase my skill as a circom, solidity developer to the people.

## Problem Statement

Imagine that you wake up, check your email, and you see an interesting task: Polygon is asking you to design a new zkSNARK circuit that implements some logical operations. You need to implement the circuit and deploy a verifier on-chain to verify proofs generated from this circuit

For this project, you will create a circuit using the circom programming language that implements the following logical gate:

![image](https://github.com/Amanlath1/ZK-SNARK-Assessment/assets/85346421/7e110f95-ca5e-46fa-9ed7-516f7a60d321)


## Description
This program is a simple contract written in circom, solidity,  a programming language used for developing smart contracts on the blockchain. The contract has been created to verify the circuit using the different gates and verifing the output and deploying the contract created on the mumbai testnet which is the testnet for the polygon chain network and which uses MATIC as its currency for the gas fees.

### Install
`npm i`

### Compile
`npx hardhat circom` 
This will generate the **out** file with circuit intermediaries and geneate the **MultiplierVerifier.sol** contract

### Prove and Deploy
`npx hardhat run scripts/deploy.ts`
This script does 4 things  
1. Deploys the MultiplierVerifier.sol contract
2. Generates a proof from circuit intermediaries with `generateProof()`
3. Generates calldata with `generateCallData()`
4. Calls `verifyProof()` on the verifier contract with calldata

