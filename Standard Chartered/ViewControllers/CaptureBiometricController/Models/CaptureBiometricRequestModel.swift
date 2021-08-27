//
//  CaptureBiometricRequestModel.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 27/08/2021.
//

import Foundation

struct CaptureBiometricRequestModel: Codable {
    
    let AccountType: String
    let CNIC: String
    let ContactNo: String
    let Action: String
    let Remarks: String
    
    var params: [String:Any] {
        return [
            "AccountType" : AccountType,
            "CNIC" : CNIC,
            "ContactNo" : ContactNo,
            "Action" : Action,
            "Remarks" : Remarks
        ]
    }
}
