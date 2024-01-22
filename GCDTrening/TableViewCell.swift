//
//  TableViewCell.swift
//  GCDTrening
//
//  Created by Mac on 22.01.2024.
//

import UIKit

class TableViewCell: UITableViewCell {

    private var imageURL: URL?
    
    private let activityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.color = .red
        indicator.isHidden = true
        return indicator
    }()
    
    private var image: UIImage? {
        get {
            return downloadImageView.image
        }

        set {
            downloadImageView.image = newValue
            downloadImageView.sizeToFit()
        }
    }
    
    private var downloadImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .green
        return imageView
    }()
    
    fileprivate func fetchImage() {
        imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        guard let url = imageURL else {
            activityIndicator.stopAnimating()
            return
        }
        
        ImageLoader.loadImage(from: url) { [weak self] image in
            DispatchQueue.main.async {
                self?.activityIndicator.stopAnimating()
                self?.image = image
            }
        }
    }
    private func layout() {
        addSubview(downloadImageView)
        addSubview(activityIndicator)
        
        NSLayoutConstraint.activate([
            downloadImageView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            downloadImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            downloadImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            downloadImageView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor),
            
            activityIndicator.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 135),
            activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
        activityIndicator.startAnimating()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
        fetchImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
