//
//  ImageCollectionViewCell.swift
//  Camp
//
//  Created by Cibele Paulino on 16/05/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    var imgCell: UIImage? {
        didSet {
            imgItem.image = imgCell
        }
    }
    
    internal lazy var imgItem: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private func commonInit() {
        addSubview(imgItem)
        addConstraintsToView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
}
extension ImageCollectionViewCell {
    func addConstraintsToView() {
        imgItem.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgItem.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imgItem.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imgItem.widthAnchor.constraint(equalTo: self.widthAnchor),
            imgItem.heightAnchor.constraint(equalTo: self.heightAnchor)
            ])
    }
}
