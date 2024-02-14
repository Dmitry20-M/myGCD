//
//  ViewController.swift
//  GCDTrening
//
//  Created by Mac on 12.02.2024.
//

import UIKit

class SecondViewController: UIViewController {
   
    var receivedLabel: UILabel?
                       
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            setupReceivedLabelIfNeeded()
        }
           
        private func setupReceivedLabelIfNeeded() {
            guard let receivedLabel = receivedLabel else { return }
            configureReceivedLabel(receivedLabel)
        }
        
        private func configureReceivedLabel(_ label: UILabel) {
            applyLabelProperties(label)
            addLabelToView(label)
            activateLabelConstraints(label)
        }

        private func applyLabelProperties(_ label: UILabel) {
            label.textColor = .black
            label.backgroundColor = .clear
            label.isHidden = false
        }
           
        private func addLabelToView(_ label: UILabel) {
            view.addSubview(label)
        }
           
        private func activateLabelConstraints(_ label: UILabel) {
            NSLayoutConstraint.activate([
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.widthAnchor.constraint(equalToConstant: 200),
                label.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    
   }
