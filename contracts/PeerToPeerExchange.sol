// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PeerToPeerExchange {
    event Exchange(address indexed seller, address indexed buyer, uint256 amount, address tokenAddress);

    function exchange(address buyer, uint256 amount, address tokenAddress) public {
        require(amount > 0, "Amount must be greater than zero");
        require(buyer != address(0), "Buyer address must be valid");

        // Transfer tokens from seller to buyer
        (bool success, ) = tokenAddress.call(abi.encodeWithSignature("transferFrom(address,address,uint256)", msg.sender, buyer, amount));
        require(success, "Token transfer failed");

        emit Exchange(msg.sender, buyer, amount, tokenAddress);
    }
}
