// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//Check if the User's balance is 

contract TokenSwap{ 
   IERC20 public immutable token;
    uint256 public totalSupply;
    uint256 public InputToken;
    uint256 public SwapingToken;
    uint256 public swapamount;
    uint256 public conversionrate;

    constructor(address _token) {
        token = IERC20(_token);
        conversionrate = getZARUSD();
        swapamount = amountToken1*conversionrate;
    }

    function swap() public {
        require(totalSupply > 0, "Not authorized");
         swapamount= _mint(msg.sender, swapamount ether);
         totalSupply += swapamount;
         burn(amountToken1);
    }

    // function _safeTransferFrom(
    //     address sender,
    //     address recipient,
    //     uint amount
    // ) private {
    //     bool sent = token.transferFrom(sender, recipient, amount);
    //     require(sent, "Token transfer failed");
    // }

    function mint(uint256 _amount) external  
    {
        _mint(msg.sender, _amount);
    }

    function burn(uint256 tokens) public returns(bool){
    require(balances[msg.sender] >= tokens);
    balances[msg.sender] = balances[msg.sender].sub(tokens);
   BalanceAfterBurn = _totalSupply.sub(tokens);
    Burn(msg.sender, tokens);
}

}