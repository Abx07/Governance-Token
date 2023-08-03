async function main() {
    // Grabbing the contract factory 
    const WebMobToken = await ethers.getContractFactory("WebMobToken");
  
    // Starting deployment, returning a promise that resolves to a contract object
    const webmobToken = await WebMobToken.deploy(); // Instance of the contract 
    console.log("Contract deployed to address:", webmobToken.address);
  }
  
  main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });