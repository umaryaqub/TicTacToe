//
//  TicTacToeController+Handlers.swift
//  TicTacToe
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import UIKit

extension TicTacToeController {
    
    func executeTicTacToeLogic(_ sender: UIButton) {
        ticTacToe.play(sender)
        if ticTacToe.result != nil {
            ticTacToeFooter?.playAgainButton.isHidden = false
            ticTacToeFooter?.resultLabel.text = ticTacToe.result
        }
    }
    
    func resetTicTacBoard() {
      ticTacToe.resetTicTacToeBoard()
      // remove images from each cell button
      let ticTacToeCells = collectionView.visibleCells as? [TicTacToeCell]
      ticTacToeCells?.forEach({ (ticTacToeCell) in
         ticTacToeCell.crossNoughtButton.setImage(nil, for: .normal)
      })
    }
}
