//
//  LoginModel.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 25/08/2021.
//

import Foundation

struct LoginRequestModel: Codable {
    
    let name: String
    let password: String
    
    var params: [String:Any] {
        return [
            "name" : name,
            "password" : password
        ]
    }
}

struct encryptedRequestModel: Codable {
    
    let encryptedRequest: String
    var params: [String:Any] {
        return [
            "encryptedRequest": encryptedRequest
        ]
    }
}
