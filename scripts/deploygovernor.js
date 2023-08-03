async function main() {
    // Grabbing tha factory contract
    const WebMobGovernor = await ethers.getContractFactory("WebMobGovernor");
    
    // Starting deployment, returning a promise that resolves to a contract object
    const WEBMOBTOKEN_ADDRESS = "0x870DF532CFeC24da8cA7Be122D5f774FFC43DC31";
    const webmobGovernor = await WebMobGovernor.deploy(WEBMOBTOKEN_ADDRESS);
    console.log("Contract deployed to address:", webmobGovernor.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });