// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

// We first import some OpenZeppelin Contracts.
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

// We inherit the contract we imported. This means we'll have access
// to the inherited contract's methods.
contract datanft is ERC721URIStorage {
    // Magic given to us by OpenZeppelin to help us keep track of tokenIds.
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // We need to pass the name of our NFTs token and its symbol.
    constructor() ERC721("Flower dataset NFT", "flwrdata") {
        console.log("This is my NFT contract. Woah!");
    }

    // A function our user will hit to get their NFT.
    function makeAnEpicNFT() public {
        // Get the current tokenId, this starts at 0.
        uint256 newItemId = _tokenIds.current();

        // Actually mint the NFT to the sender using msg.sender.
        _safeMint(msg.sender, newItemId);

        // Set the NFTs data.
        _setTokenURI(
            newItemId,
            "data:application/json;base64,ewogICAgIm5hbWUiOiAiZGF0YW5mdCIsCiAgICAiZGVzY3JpcHRpb24iOiAiQSBuZnQgb2YgdGhlIGZsb3dlciBkYXRhc2V0IiwKICAgICJtZXRhZGF0YSI6Imh0dHBzOi8vZ2F0ZXdheS5saWdodGhvdXNlLnN0b3JhZ2UvaXBmcy9RbVF4YWNzdHBkMldMekptVGE5dGs4MlhQWUVaUmlWOGg2VEM0UVZoUzhpcVNrIgoKfQ=="
        );

        // Increment the counter for when the next NFT is minted.
        _tokenIds.increment();
    }
}
