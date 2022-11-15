import  hre from "hardhat";

const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory("EIP721NFT");

    const nftContract = await nftContractFactory.deploy();

    await nftContract.deployed();

    console.log("Contract depoyed to:",  nftContract.address);
    
    let txn = await nftContract.mintNFT();

    await txn.wait();
}

const runMain = async() => {
    try {
        await main();
        process.exit(0);
    } catch(error){
        console.log(error);
        process.exit(1);
    }
}

runMain();