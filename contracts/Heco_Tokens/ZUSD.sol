// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

//All our import Statements needed
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

 
//Create the Contract
contract ZUSD is ERC20 {
    constructor() ERC20("zUSD", "zUSD") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }


    // Mint this much tokens to the caller
    // OnlyVault modifier
    function mint(uint256 _amount) external  
    {
        _mint(msg.sender, _amount);
    }
}