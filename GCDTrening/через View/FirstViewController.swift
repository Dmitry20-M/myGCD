//
//  ViewController.swift
//  GCDTrening
//
//  Created by Mac on 21.01.2024.
//

import UIKit

protocol LabelPassingDelegate: AnyObject {
    func passLabel(_ label: UILabel)
}

class FirstViewController: UIViewController {
    
    weak var delegate: LabelPassingDelegate?
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Привет, я UILabel!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var myButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Перейти", for: .normal)
        button.addTarget(self, action: #selector(navigateToSecondVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layout()
    }
    
    private func cloneLabel(label: UILabel) -> UILabel {
        let clonedLabel = UILabel(frame: label.frame)
        clonedLabel.text = label.text
        clonedLabel.textColor = label.textColor
        clonedLabel.backgroundColor = label.backgroundColor
        return clonedLabel
    }
    
    @objc func navigateToSecondVC() {
        let secondVC = SecondViewController()
        // Clone the label and pass it to the second view controller
        let clonedLabel = cloneLabel(label: myLabel)
        secondVC.receivedLabel = clonedLabel
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    private func layout() {
        view.addSubview(myLabel)
        view.addSubview(myButton)
        
        
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
}

