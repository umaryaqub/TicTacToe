//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import UIKit

class TicTacToe {
    
    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningCombinations = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    var isGameActive = true
    
    func play(_ sender: UIButton) {
        if gameState[sender.tag] == 0 && isGameActive == true {
            // update the game state from 0 to the active player
            gameState[sender.tag] = activePlayer
            // if player 1 played then update to a cross
            // else to a nought
            if activePlayer == 1 {
                setupPlayer1State(sender)
            } else {
                setupPlayer2State(sender)
            }
        }
    }
    
    private func setupPlayer1State(_ sender: UIButton) {
        sender.setImage(#imageLiteral(resourceName: "Cross").withRenderingMode(.alwaysOriginal), for: .normal)
        // change game piece
        activePlayer = 2
    }
    
    private func setupPlayer2State(_ sender: UIButton) {
        sender.setImage(#imageLiteral(resourceName: "Nought").withRenderingMode(.alwaysOriginal), for: .normal)
        // change game piece
        activePlayer = 1
    }
}
