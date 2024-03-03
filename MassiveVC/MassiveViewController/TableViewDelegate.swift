//
//  TableViewDelegate.swift
//  MassiveVC
//
//  Created by Azoz Salah on 03/03/2024.
//

import UIKit

protocol ViewControllerPresenter: AnyObject {
    func didSelectItem(at index: Int)
}


class TableViewDelegate: NSObject, UITableViewDelegate {
    
    weak var parentController: ViewControllerPresenter!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Handle table view cell selection...
        parentController.didSelectItem(at: indexPath.row)
    }
    
}
