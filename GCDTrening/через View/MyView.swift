//
//  MyView.swift
//  GCDTrening
//
//  Created by Mac on 12.02.2024.
//

import UIKit

//class MyView: UIView {
//
//    public let myLabel: UILabel = {
//            let label = UILabel()
////            label.text = ""
//            label.numberOfLines = 1
//            label.font = .systemFont(ofSize: 20)
//            label.translatesAutoresizingMaskIntoConstraints = false
//            return label
//        }()
//        
//        public let imageView: UIImageView = {
//            let imageView = UIImageView()
//            imageView.translatesAutoresizingMaskIntoConstraints = false
//            return imageView
//        }()
//        
//            override init(frame: CGRect) {
//                super.init(frame: frame)
//                layout()
//            }
//        
//            required init?(coder: NSCoder) {
//                fatalError("init(coder:) has not been implemented")
//            }
//        
//        private func layout() {
//            addSubview(myLabel)
//            addSubview(imageView)
//            
//            NSLayoutConstraint.activate([
//                myLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
//                myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
//                myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
//                myLabel.widthAnchor.constraint(equalToConstant: 300),
//                
//                imageView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 50),
//                imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//                imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//                imageView.heightAnchor.constraint(equalToConstant: 400)
//            ])
//        }
//
//
//}
