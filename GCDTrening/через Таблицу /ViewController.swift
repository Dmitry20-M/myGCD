//
//  ViewController.swift
//  GCDTrening
//
//  Created by Mac on 14.02.2024.
//

import UIKit

protocol DataTransferDelegate: AnyObject {
    func sendData(data: String, imageStr: String)
}

class ViewController: UIViewController {

    weak var delegate: DataTransferDelegate?

        private lazy var buttonVC: UIButton = {
            let buttonVC = UIButton()
            buttonVC.setTitle("Перейти на другой экран", for: .normal)
            buttonVC.setTitleColor(.systemBlue, for: .normal)
            buttonVC.translatesAutoresizingMaskIntoConstraints = false
            buttonVC.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
            return buttonVC
        }()

        @objc func goToNextScreen() {
            let viewVCTwo = ViewControllerTwo()
            viewVCTwo.delegate = self
            navigationController?.pushViewController(viewVCTwo, animated: true)
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            layout()
        }

        private func layout() {
            view.addSubview(buttonVC)

            NSLayoutConstraint.activate([
                buttonVC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                buttonVC.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
        }
    }

extension ViewController: DataTransferDelegate {


        func sendData(data: String, imageStr: String) {
            // Do nothing here, implementation will happen in ViewControllerTwo

        }
    }
