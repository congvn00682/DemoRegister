//
//  DatePickerViewController.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/22/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var chooseAge: UIButton!
    var arrAge: Array = [Int](1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseAge.layer.cornerRadius = chooseAge.frame.size.width/2
        pickerView.selectRow(17, inComponent: 0, animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrAge.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(describing: arrAge[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserDefaults.standard.set(String(arrAge[row]), forKey: "chooseAge")
    }
    
    
    
}
