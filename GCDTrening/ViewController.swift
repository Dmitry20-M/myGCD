//
//  ViewController.swift
//  GCDTrening
//
//  Created by Mac on 21.01.2024.
//

import UIKit

class ViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Перход на другой экран", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    @objc private func buttonPressed() {
        let vc = ViewControllerTwo()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layout()
    }
    
    private func layout() {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}

