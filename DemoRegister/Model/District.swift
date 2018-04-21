//
//  District.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/20/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class District{
    
    var cityCode: Int
    var districtCode: Int
    var name: String
    
    init?(dict: DICT) {
        
        guard let cityCode = dict["CityCode"] as? Int else { return nil }
        guard let districtCode = dict["DistrictCode"] as? Int else { return nil }
        guard let name = dict["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.districtCode = districtCode
        self.name = name
    }
    
}
