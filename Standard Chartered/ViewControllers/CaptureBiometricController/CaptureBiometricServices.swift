//
//  CaptureBiometricServices.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 27/08/2021.
//

import Foundation

class CaptureBiometricServices: BaseServices {
    
    
    func postMethod(urlString: String, dataModel: [String:Any], completion: @escaping ([String: Any]) -> Void) {
        
        baseServicesPostMethod(urlString: urlString, dataModel: dataModel, completion: {(responseData) in
            completion(responseData)
        })
        
    }
}

