//SPDX-Licence-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);
    function descriptions() external view returns (string memory);
    function version() external view returns (uint256);
    
    function getRoundData(uint80 _roundId)
    external 
    view 
    returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound);
}

// contract that can accept some payment.

contract FundMe{
   
   // foru se to see whos sent the fund 
   mapping(address => uint256) public addressToAmountFunded;
    
    function fund() public payable{
        addressToAmountFunded[msg.sender] += msg.value;
        
        // What the ETH -> USD conversion rate
        
    }
    
    function gerVersion public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        
    }
}