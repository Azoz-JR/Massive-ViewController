//
//  TableViewDataSource.swift
//  MassiveVC
//
//  Created by Azoz Salah on 03/03/2024.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    
    var data: [String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // Configure cell...
        return cell
    }
    
    // A getter method to access the data array at a specific index.
    func item(at index: Int) -> String {
        return data[index]
    }
    
}
