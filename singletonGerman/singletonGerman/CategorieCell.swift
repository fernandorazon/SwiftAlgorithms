//
//  CategorieCell.swift
//  singletonGerman
//
//  Created by d182_fernando_r on 21/04/18.
//  Copyright © 2018 d182_fernando_r. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let albumCellId = "AlbumCell"
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setUpLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(Coder:) has not been implemented")
    }
    
    
    //Hacemos un primer elemento
    
    let AlbumCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.backgroundColor = UIColor.cyan
        layout.scrollDirection = .horizontal
        
        //Para habilitar o deshabilitar el interface builder
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        return collectionview
        
    }()
    
    let categoryLabel: UILabel = {
        
        let label = UILabel()
        label.text = "KO"
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    var AlbumCategory: Category? {
        didSet {
            
            if let name = AlbumCategory?.Name {
                categoryLabel.text = name
            }
            
        }
    }
    
    //Para meter nuestro coleccionView en nuestra celda
    
    func setUpLayout(){
        backgroundColor = UIColor.red
        
        //Se agrega la subvista del collectionView
        addSubview(AlbumCollectionView)
        AlbumCollectionView.dataSource = self
        AlbumCollectionView.delegate = self
        
        AlbumCollectionView.register(albumCell.self, forCellWithReuseIdentifier: "AlbumCell")
        
        //Lo agregamos visualmente agregando constraints
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": AlbumCollectionView]))
        
         addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": AlbumCollectionView]))
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: albumCellId, for: indexPath)

        // Configure the cell
        cell.backgroundColor = UIColor.gray
        return cell
    }


    
    
    

    
    
}
