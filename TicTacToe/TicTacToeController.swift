//
//  ViewController.swift
//  TicTacToe
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import UIKit

class TicTacToeController: UICollectionViewController {
    
    let cellId = "cellId"
    var activePlayer = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(TicTacToeCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.backgroundColor = .red
    }


}

