//
//  ViewController.swift
//  GCDTrening
//
//  Created by Mac on 12.02.2024.
//

import UIKit
// ViewController, принимающий данные
class SecondViewController: UIViewController {

        private let myView = MyView()
        
    //    private let myLabel: UILabel = {
    //        let label = UILabel()
    //        label.text = ""
    //        label.numberOfLines = 1
    //        label.font = .systemFont(ofSize: 20)
    //        label.translatesAutoresizingMaskIntoConstraints = false
    //        return label
    //    }()
    //
    //    private let imageView: UIImageView = {
    //        let imageView = UIImageView()
    //        imageView.translatesAutoresizingMaskIntoConstraints = false
    //        return imageView
    //    }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            view.addSubview(myView)
            dataTransfer()
    //        layot()
        }
        
           override func viewWillLayoutSubviews() {
                super.viewWillLayoutSubviews()
                myView.frame = self.view.frame
            }
        
        private func dataTransfer() {
            let firstVC = FirstViewController()
            firstVC.delegate = self
            firstVC.sendDataToSecondViewController()
            
        }
        
    //    private func layot() {
    //        view.addSubview(myLabel)
    //        view.addSubview(imageView)
    //        dataTransfer()
    //
    //        NSLayoutConstraint.activate([
    //            myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
    //            myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
    //            myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
    //            myLabel.widthAnchor.constraint(equalToConstant: 300),
    //
    //            imageView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 50),
    //            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
    //            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
    //            imageView.heightAnchor.constraint(equalToConstant: 400)
    //        ])
    //    }
    }

    extension SecondViewController: DataTransferDelegate {
        
        func sendData(data: String) {
            //        print("Получил данные: \(data)")
            myView.myLabel.text = data
        }
        
        func sendImage(imageStr: String) {
            
            myView.imageView.image = UIImage(named: "\(imageStr)")
            
        }
        
    }
