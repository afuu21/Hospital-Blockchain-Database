
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

// Contract name 

contract doctorContract {

    mapping(uint => doctor) public DOCTOR;
    
    struct doctor {
    uint doctor_id;
    string doctor_name;
    }
    
    // add a doctor
    function add_doctor(uint _id, string memory _name) public {
        DOCTOR[_id] = doctor(_id,_name);
    }
    
    // add patients to be treated.., or might be any type of patient waiting for treatment
    function add_patient(uint _id, string memory _name) public {
        PATIENT[_id] = patient(_id,_name);
    }
    
    // get the doctor data
    function get_doctor_data(uint _id) public view returns (doctor memory) {
        return DOCTOR[_id];
    } 
    
}
