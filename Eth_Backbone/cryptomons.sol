pragma solidity ^0.4.0;
contract cryptomon {
    
    struct monStats {
        uint level;
        uint Attack;
        uint Defense;
        uint Stamina;
        uint exp;
        uint health;
    }
    
    struct monAttacks {
        uint Tackle;
        uint Scratch;
        uint Thunder;
        uint ice_breath;
    }
    
    address[] public newContracts;
    address public creator;
    address public ID;
    bytes32 public Name;
    modifier onlyOwner{require(msg.sender == creator); _;}
    
    mapping(uint => monAttacks) validAttacks;
    mapping(uint => monStats) validStats;
    
    function cryptomon(address OAddress, 
                       bytes32 _name,
                       address _cpty1, 
                       address _creator)
                       public{
        
    }
    function attack(address Target, uint chosenAttack, uint monID) public {
        monAttacks storage attacks = validAttacks[monID];
        attacks.Tackle = 5;
        //msg.sender = Target;
        //msg.value = attacks.chosenAttack;
        //msg.send();
    }
    
    function battle(address Enemy, uint monID) public returns(bool win) {
        monStats storage stats = validStats[monID];
        struct enemyStats = getStats();
        if (Enemy.monStats.health <= 0) {
            return false;
        }
    }
    
    
    
    function levelUp(uint statID) private {
        monStats memory stats = validStats[statID];
        stats.level++;
    }
    
    function setExp(uint experience, uint statID) public {
        //
        monStats memory stats = validStats[statID];
        stats.exp = experience;
    }
    
    function getStats() public returns(monStats stats) {
        return monStats;
    }
}
