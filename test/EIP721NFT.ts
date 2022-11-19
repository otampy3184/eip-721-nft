const { expect } = require("chai");
import { ethers } from "hardhat";
import { eip721NftSol } from "../typechain-types/contracts";

describe("NFT", function() {
    async function deployTest() {
        const EIP721NFT = await ethers.getContractFactory("EIP721NFT");
        const eip721nft = await EIP721NFT.deploy();

        await eip721nft.deployed();

        console.log("contract deployed at: ", eip721nft.address);
    }

    describe("mint", function() {
        it("should mint the nft",async () => {
        })
    })
})