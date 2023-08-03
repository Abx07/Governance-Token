# Governance Token

There is no mold for DAO governance—every organization handles it differently. It’s important to understand what model works best for the goals you have in mind and the community you hope to build.

## Helpers Overview

After forking repo type ```npm i``` in your terminal.

Cross-check the package version if you stuck somewhere.

## ENV Setup
```
API_URL = "https://eth-sepolia.g.alchemy.com/v2/<ALCHEMY_API_KEY>"
PRIVATE_KEY = "<METAMASK_PRIVATE_KEY>"
ETHERSCAN_API_KEY = "<ETHERSCAN_API_KEY>"
```

## Smart Contract 

### Compile
```shell
npx hardhat compile
```

### Deploy

#### Token Contract
```shell
npx hardhat run scripts/deploytoken.js --network sepolia
```

#### Governor Contract
```shell
npx hardhat run scripts/deploygovernor.js --network sepolia
```

### Verify on Etherscan

## Token Contract
```shell
npx hardhat verify --network sepolia <TOKEN_CONTRACT_ADDRESS>
```
## Governor Contract 
```shell
npx hardhat verify --network sepolia <GOVERNOR_CONTRACT_ADDRESS> <TOKEN_CONTRACT_ADDRESS>
```

## Hardhar Helpers
Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```