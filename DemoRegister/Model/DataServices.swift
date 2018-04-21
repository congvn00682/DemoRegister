//
//  DataServices.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/20/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import Foundation

typealias DICT = Dictionary<AnyHashable, Any>

class DataServices {
    static let shared: DataServices = DataServices()
    
    // Cities
    var cityCode: Int?
    
    private var _cities: [City]?
    var cities: [City] {
        get {
            if _cities == nil {
                _cities = []
                getDataCities()
            }
            return _cities ?? []
        }
    }
    
    // Districts
    private var _districts: [District]?
    
    var district: [District] {
        get {
            if _districts == nil {
                _districts = []
                getDataDistricts()
            }
            return cityCode == nil ? [] : (_districts ?? []).filter { $0.cityCode == cityCode }
        }
    }

    func getDataCities() {
        let path = Bundle.main.path(forResource: "Cities", ofType: "plist")!
        guard let data = FileManager.default.contents(atPath: path) else { return }
        guard let result = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) else { return }
        
        guard let citiesObject = result as? DICT else { return }
        
        guard let cities = citiesObject["Cities"] as? [DICT] else { return }
        for city in cities {
            if let cityObj = City(dict: city) {
                _cities?.append(cityObj)
            }
        }
    }
    
    func getDataDistricts() {
        let path = Bundle.main.path(forResource: "Districts", ofType: "plist")!
        guard let data = FileManager.default.contents(atPath: path) else { return }
        guard let result = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) else { return }
        
        guard let districtsObject = result as? DICT else { return }
        guard let districts = districtsObject["Districts"] as? [DICT] else { return }
        for district in districts {
            if let districtObj = District(dict: district) {
                _districts?.append(districtObj)
            }
        }
    }
}
