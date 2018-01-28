pragma solidity ^0.4.0;

import "browser/cryptomons.sol";
import "browser/cryptomonWallet.sol";

contract cryptomonFactory{
    address owner;
    modifier onlyBy(address _account)
    {
        require(msg.sender == _account);
        // Do not forget the "_;"! It will
        // be replaced by the actual function
        // body when the modifier is used.
        _;
    }

 mapping(int => uint) monsType;
 mapping(bytes32 => address) availableMons;

 function cryptomonFactory(){}
 
 function getNextMons(address dexAddress) external{
    address newCryptomon = new cryptomon(dexAddress);
    cryptomonWallet dex = cryptomonWallet(dexAddress);
    dex.addCryptomon(newCryptomon);
    /*if (!dexAddress.call(bytes4(keccak256("addCryptomon(address)")), newCryptomon)){
        revert();
    }*/
        
 }
 
 function isContract(address addr) private view returns (bool) {
  uint size;
  assembly { size := extcodesize(addr) }
  return size > 0;
 }
    
}
