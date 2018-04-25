//
//  SumViewController.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/23/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class SumViewController: UIViewController {

    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var districtLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cityLabel.text = UserDefaults.standard.string(forKey: "cityName")
        districtLabel.text = UserDefaults.standard.string(forKey: "districtName")
        ageLabel.text = UserDefaults.standard.string(forKey: "chooseAge")
        genderLabel.text = UserDefaults.standard.string(forKey: "gender")
    }
    
}
