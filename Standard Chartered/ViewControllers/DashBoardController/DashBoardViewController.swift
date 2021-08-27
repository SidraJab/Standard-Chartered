//
//  DashBoardViewController.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 25/08/2021.
//

import UIKit

class DashBoardViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var logoutSwitch: UISwitch!
    
    //MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - IBActions
    
    @IBAction func inquiryTapped(_ sender: UIButton) {
        
        let vc = InquiryViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func biometricTapped(_ sender: UIButton) {
        
        let vc = CaptureBiometricViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onLogoutSwitch(_ sender: UISwitch) {
        
        let alert = UIAlertController(title: "SCBBVS", message: "Are you sure you want to logout", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: { action in
            self.logoutSwitch.isOn = true
        }))
        self.present(alert, animated: true, completion: nil)
        
    }

}
