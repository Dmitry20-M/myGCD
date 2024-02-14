//
//  ViewControllerTwo.swift
//  GCDTrening
//
//  Created by Mac on 14.02.2024.
//

import UIKit

class ViewControllerTwo: UIViewController {

    weak var delegate: DataTransferDelegate?

       private var modelData = ModelData.modelData()

       private lazy var tableView: UITableView = {
           let table = UITableView()
           table.translatesAutoresizingMaskIntoConstraints = false
           table.delegate = self
           table.dataSource = self
           table.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
           return table
       }()

       override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = .white
           layout()
       }

       private func layout() {
           view.addSubview(tableView)

           NSLayoutConstraint.activate([
               tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
               tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
           ])
       }
   }

   extension ViewControllerTwo: UITableViewDataSource {
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           modelData.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
           let data = modelData[indexPath.row]
           cell.initData(model: data)
           return cell
       }
   }

   extension ViewControllerTwo: UITableViewDelegate {
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 450
       }
   }

   extension ViewControllerTwo: DataTransferDelegate {
       func sendData(data: String, imageStr: String) {
           let newData = ModelData(labelData: data, imageData: imageStr)
           modelData.append(newData)
           tableView.reloadData()
       }
   }
