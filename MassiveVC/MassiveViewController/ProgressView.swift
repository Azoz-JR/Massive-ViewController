//
//  ProgressView.swift
//  MassiveVC
//
//  Created by Azoz Salah on 03/03/2024.
//

import UIKit

class ProgressView: UIView {
    private let activityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .medium)
        indicator.color = .gray
        indicator.hidesWhenStopped = true
        return indicator
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        contentMode = .center
        
        // Set background color and corner radius
        backgroundColor = UIColor.systemBackground
        layer.cornerRadius = 15.0

        //Add border
        layer.borderColor = UIColor.lightGray.withAlphaComponent(0.2).cgColor
        layer.borderWidth = 1

        // Add activity indicator
        addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

    func startAnimating() {
        activityIndicator.startAnimating()
        self.isHidden = false
    }

    func stopAnimating() {
        activityIndicator.stopAnimating()
        self.isHidden = true
    }
}
