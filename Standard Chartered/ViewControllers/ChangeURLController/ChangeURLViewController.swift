//
//  ChangeURLViewController.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 26/08/2021.
//

import UIKit

class ChangeURLViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var editURLBtn: UIButton!
    @IBOutlet weak var staggingURLBtn: UIButton!
    @IBOutlet weak var saveURLBtn: UIButton!
    @IBOutlet weak var backURLBtn: UIButton!
    
    //MARK: - IBActions
    
    @IBAction func backTapped(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }

    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.editURLBtn.applyCircledView()
        self.staggingURLBtn.applyCircledView()
        self.saveURLBtn.applyCircledView()
        self.backURLBtn.applyCircledView()
    }
}
