//
//  ViewController.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 25/08/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var enterNameView: UIView!
    @IBOutlet weak var enterPassView: UIView!
    @IBOutlet weak var authenticateBtnView: UIView!
    @IBOutlet weak var changeURLBtnView: UIView!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.enterNameView.layer.cornerRadius = 10
        self.enterPassView.layer.cornerRadius = 10
        self.authenticateBtnView.applyCircledView()
        self.changeURLBtnView.applyCircledView()
    }
    
    //MARK: - IBActions
    
    @IBAction func authenticateUserTapped(_ sender: UIButton) {
        
        self.loginUserAPI()
    }
    
    @IBAction func changeURLTapped(_ sender: UIButton) {
        
        let vc = ChangeURLViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }

    //MARK: - CallAPI Function
    
    func loginUserAPI() {
        
        let services = LoginServices()
        let loginUrl = "doActivity"
        let uploadDataModel = LoginRequestModel(name: self.txtName.text ?? "", password: self.txtPassword.text ?? "").params
        services.postMethod(urlString: loginUrl, dataModel: uploadDataModel, completion: { (responseData) in
            print(responseData)
            let vc = DashBoardViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        })
        
    }

}

