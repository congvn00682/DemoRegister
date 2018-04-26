//
//  DistrictViewController.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/20/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DistrictViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = UserDefaults.standard.string(forKey: "cityName")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataServices.shared.district.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        cell.textLabel?.text = DataServices.shared.district[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(DataServices.shared.district[indexPath.row].name, forKey: "districtName")
    }

}
