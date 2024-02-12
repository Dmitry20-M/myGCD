//
//  ViewController.swift
//  GCDTrening
//
//  Created by Mac on 21.01.2024.
//

import UIKit


// Протокол для передачи данных между view controllers
protocol DataTransferDelegate: AnyObject {
    func sendData(data: String)
    func sendImage(imageStr: String)
}

// ViewController, отправляющий данные
class FirstViewController: UIViewController {

    weak var delegate: DataTransferDelegate?
      
      private lazy var buttonVC: UIButton = {
              let buttonVC = UIButton()
              buttonVC.setTitle("Перейти на другой экран", for: .normal)
              buttonVC.setTitleColor(.systemBlue, for: .normal)
              buttonVC.translatesAutoresizingMaskIntoConstraints = false
              buttonVC.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
              return buttonVC
          }()
      
      func sendDataToSecondViewController() {
          delegate?.sendData(data: "Hello from FirstViewController")
          delegate?.sendImage(imageStr: "1")
      }
      
      @objc func goToNextScreen() {
           let viewVCTwo = SecondViewController()
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

