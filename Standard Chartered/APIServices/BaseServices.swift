//
//  APIService.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 25/08/2021.
//

import Foundation
import Alamofire

class BaseServices {
    
    func baseServicesPostMethod(urlString: String, dataModel: [String:Any], completion: @escaping ([String: Any]) -> Void) {
        
        let strURL = "https://pkwpipapp01.zone3.scb.net/ScbCoreApis/ActivityJSON.svc/\(urlString)"
        guard let url = URL(string: strURL) else {
            print("Error: cannot create URL")
            return
        }
        
        guard let convertToData = try? JSONSerialization.data(withJSONObject: dataModel, options: []) else {
            print("Error: Cannot convert JSON object to data")
            return
        }
        guard let convertToString = String(data: convertToData, encoding: .utf8) else {
            print("Error: Could print JSON in String")
            return
        }
        
        guard let encryptedString = try? convertToString.aesEncrypt(key: "8905671fabc234de") else {
             print("Error: Cannot Encrypted")
            return
            }
        
        let encryptedModel = encryptedRequestModel(encryptedRequest: encryptedString)
        
        AF.request(url, method: .post, parameters: encryptedModel.params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { (AFdata) -> Void in
            print(AFdata)
            completion(dataModel)
//            do {
//                guard let jsonObject = try JSONSerialization.jsonObject(with: AFdata.data ?? Data()) as? [String: Any] else {
//                    print("Error: Cannot convert data to JSON object")
//                    return
//                }
//
//                guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
//                    print("Error: Cannot convert JSON object to Pretty JSON data")
//                    return
//                }
//                guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
//                    print("Error: Could print JSON in String")
//                    return
//                }
//                print(prettyPrintedJson)
//                completion(dataModel)
//                //                completion(jsonObject)
//
//            } catch {
//                print("Error: Trying to convert JSON data to string")
//                return
//            }
        }
        
    }
}

