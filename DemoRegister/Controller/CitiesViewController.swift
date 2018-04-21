//
//  MasterViewController.swift
//  DemoRegister
//
//  Created by Vu Ngoc Cong on 4/20/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class CitiesViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        DataServices.shared.getDataCities()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataServices.shared.cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = DataServices.shared.cities[indexPath.row].name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataServices.shared.cityCode = DataServices.shared.cities[indexPath.row].cityCode
    }

}
