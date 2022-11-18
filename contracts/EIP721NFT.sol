// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../node_modules/@openzeppelin/contracts/utils/Counters.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "../node_modules/hardhat/console.sol";

import "./libraries/Base64.sol";

contract EIP721NFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("EIP721NFT", "e7n"){
        console.log("Constructed.");
    }

    event NewNFTMinted(address sender, uint256 tokenId);

    function mintNFT() public {
        uint newTokenId = _tokenIds.current();
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, "test");

        _tokenIds.increment();

        emit NewNFTMinted(msg.sender, newTokenId);
    }

    // function tokenURI(uint256 _tokenId) public view override returns (string memory) {
    //     return _tokenId;
    // }
}