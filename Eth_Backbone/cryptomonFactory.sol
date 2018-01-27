pragma solidity ^0.4.0;


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

 function cryptomonFactory(address _createdby) public{
     owner = _createdby;
 }
 
 void getNextMons(int locX, int locY, address walletAddress){
    walletAddress.call(addCryptoMon)    
 
 }
 
 function isContract(address addr) private view returns (bool) {
  uint size;
  assembly { size := extcodesize(addr) }
  return size > 0;
}
    

}
