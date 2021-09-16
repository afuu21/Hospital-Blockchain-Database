pragma solidity ^0.8.7;

contract doctorContract {
    mapping(uint => doctor) public DOCTOR;
    
    struct doctor {
    uint doctor_id;
    string doctor_name;
    }
    
    function add_doctor(uint _id, string memory _name) public {
        DOCTOR[_id] = doctor(_id,_name);
    }
    
    function get_doctor_data(uint _id) public view returns (doctor memory) {
        return DOCTOR[_id];
    } 
    
}
