pragma solidity ^0.5.0;

import "../Base/SupplyChain.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "openzeppelin-solidity/contracts/ownership/Secondary.sol";

contract MainChain is SupplyChain, Ownable, Secondary {
    constructor() public {

    }

    function kill() public onlyOwner() {
        selfdestruct(msg.sender);
    }

    function purchaseDrug (uint _pku)
        public
        payable
    {
        super.purchaseDrug(_pku);

        uint price = dItems[_pku].price;
        address payable developerId = address(uint160(owner()));
        uint developerBounty = price*1 /100;
        developerId.transfer(developerBounty);

    }

}
