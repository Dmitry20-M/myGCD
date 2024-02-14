//
//  TableViewCell.swift
//  GCDTrening
//
//  Created by Mac on 14.02.2024.
//

import UIKit

class TableViewCell: UITableViewCell {
        
    public let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24)
        label.numberOfLines = 1
        return label
    }()
    
    public let picktures: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .systemGray
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = true
        return image
    }()

        func initData(model: ModelData) {
        label.text = model.labelData
        picktures.image = UIImage(named: model.imageData)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        contentView.addSubview(label)
        contentView.addSubview(picktures)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 50),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 80),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -70),
            label.widthAnchor.constraint(equalToConstant: 300),
            
            
            picktures.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            picktures.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            picktures.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            picktures.heightAnchor.constraint(equalToConstant: 400)
        ])
    }

}
