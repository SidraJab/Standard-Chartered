//
//  InquiryViewController.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 26/08/2021.
//

import UIKit

class InquiryViewController: UIViewController {
    
    //MARK: - IBActions
    
    @IBAction func cancelTapped(_ sender: UIButton) {
        
        let vc = DashBoardViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
