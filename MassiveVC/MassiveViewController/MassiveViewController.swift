//
//  MassiveViewController.swift
//  MassiveVC
//
//  Created by Azoz Salah on 03/03/2024.
//

import UIKit

class MassiveViewController: UIViewController, UITableViewDataSource,
                             UITableViewDelegate, UITextFieldDelegate,
                             UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var textField: UITextField!
    
    var progressView: UIView!
    
    var tableData: [String] = []
    var collectionData: [String] = []
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupCollectionView()
        setupTextField()
        fetchData()
    }
    
    func setupView() {
        let activityIndicator: UIActivityIndicatorView = {
            let indicator = UIActivityIndicatorView(style: .medium)
            indicator.color = .gray
            indicator.hidesWhenStopped = true
            return indicator
        }()
        
        progressView.addSubview(activityIndicator)
        progressView.contentMode = .center
        progressView.backgroundColor = UIColor.systemBackground
        progressView.layer.cornerRadius = 15.0
        progressView.layer.borderColor = UIColor.lightGray.cgColor
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerXAnchor.constraint(equalTo: progressView.centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: progressView.centerYAnchor).isActive = true
        
        view.addSubview(progressView)
        progressView.center = view.center
        progressView.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Handle text changes here
        if let newText = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) {
            text = newText
        }
        
        return true
    }
    
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        // Additional setup for table view
    }
    
    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        // Additional setup for collection view
    }
    
    func setupTextField() {
        textField.delegate = self
        // Additional setup for text field
    }
    
    func fetchData() {
            // Code for fetching data from a remote server
            // This function handles data fetching for both table view and collection view
        }
    
}
