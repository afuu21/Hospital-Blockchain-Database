pragma solidity ^0.8.7;

contract hospitalContract {
    
    mapping(uint => hospital) public HOSPITAL;
    
    struct hospital {
    uint hospital_id;
    string hospital_name;
    }
    
    function add_hospital(uint _id, string memory _name) public {
        HOSPITAL[_id] = hospital(_id,_name);
    }
    
    function get_hospital_data(uint _id) public view returns (hospital memory) {
        return HOSPITAL[_id];
    }  
    
}