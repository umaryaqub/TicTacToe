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
    let footerId = "footerId"
    let ticTacToeCells = 9
    var ticTacToe: TicTacToe!
    var ticTacToeFooter: TicTacToeFooter?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup navigation title
        navigationItem.title = "TicTacToe"
        
        // setup collection view
        collectionView.register(TicTacToeCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(TicTacToeFooter.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerId)
        collectionView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        
        // initialise game logic client
        ticTacToe = TicTacToe()
    }


}

