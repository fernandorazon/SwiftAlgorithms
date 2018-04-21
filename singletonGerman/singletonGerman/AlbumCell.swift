//
//  AlbumCell.swift
//  singletonGerman
//
//  Created by d182_fernando_r on 21/04/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit

class albumCell: UICollectionViewCell {

    override init(frame: CGRect){
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(Coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        
        let im = UIImageView()
        im.image = UIImage(named: "cover1")
        im.layer.cornerRadius = 18
        
        return im
        
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Rihana"
        label.font = UIFont.systemFont(ofSize: 13)
        return label
        
    }()
    
    let categoryLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Musica"
        label.font = UIFont.systemFont(ofSize: 13)
        return label

    }()
    
    func setUpLayout() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(categoryLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        titleLabel.frame = CGRect(x: 0, y: 0, width: frame.width, height: 50)
        categoryLabel.frame = CGRect(x: 0, y: 0, width: frame.width, height: 50)
        
    }
    
    
}
