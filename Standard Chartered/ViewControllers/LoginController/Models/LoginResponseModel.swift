//
//  LoginResponseModel.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 25/08/2021.
//

import Foundation


struct LoginResponseModel: Codable {
    let success: Bool
    
    var params: [String:Any] {
        return [
            "success": success
        ]
    }
}

struct decryptedResponseModel: Codable {
    
    let decryptedResponse: String
    var params: [String:Any] {
        return [
            "decryptedResponse": decryptedResponse
        ]
    }
}

