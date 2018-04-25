//
//  GenderViewController.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/23/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {
    
    
    
    @IBOutlet var checkButton: [UIButton]!
    @IBOutlet weak var doneBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        doneBtn.isEnabled = false
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func checkTapped(_ sender : UIButton) {
        /// tich chon va bo chon duoc button sender.isSelected != sender.isSelected
        sender.isSelected  = true
        /// Thao tac de chi chon duoc 1 button duy nhat
        checkButton.forEach { checkBtn in
            if checkBtn != sender {
                checkBtn.isSelected = false
                doneBtn.isEnabled = true
            }
        }
        UserDefaults.standard.set(sender.currentTitle, forKey: "gender")
        
        
//        // ngoai giao dien phai chinh tag cho button
//        switch sender.tag {
//        case 1:
//            UserDefaults.standard.set("Man", forKey: "gender")
//        case 2:
//            UserDefaults.standard.set("Woman", forKey: "gender")
//        default:
//            UserDefaults.standard.set("Other", forKey: "gender")
//        }
    }
    
}
