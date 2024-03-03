//
//  ViewController.swift
//  MassiveVC
//
//  Created by Azoz Salah on 02/03/2024.
//

import UIKit

class ViewController: UIViewController, ViewControllerPresenter {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataSource = DataSource()
    var tableViewDelegate = TableViewDelegate()
    
    var progressView = ProgressView(frame: CGRect(origin: .zero, size: CGSize(width: 80, height: 80)))
    
    var tableData: [String] = []
    var collectionData: [String] = []
    var text = ""
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(progressView)
        progressView.center = view.center
    }
    
    override func viewDidLoad() {
        tableView.dataSource = dataSource
        
        tableView.delegate = tableViewDelegate
        tableViewDelegate.parentController = self
        
        progressView.startAnimating()
    }
    
    func didSelectItem(at index: Int) {
        let item = dataSource.item(at: index)
        
        // Handle item selection...
    }
    
}
