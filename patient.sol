pragma solidity ^0.8.7;

contract patientContract {
    mapping(uint => patient) public PATIENT;
    
    struct patient {
    uint patient_id;
    string patient_name;
    }
    
    function add_patient(uint _id, string memory _name) public {
        PATIENT[_id] = patient(_id,_name);
    }
    
    function get_patient_data(uint _id) public view returns (patient memory) {
        return PATIENT[_id];
    }  
}