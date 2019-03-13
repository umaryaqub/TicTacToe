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
    var result: String!
    
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
            // with each play, try and work out a winner
            checkIfWinningCombinationsAchieved()
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
    
    private func checkIfWinningCombinationsAchieved() {
        winningCombinations.forEach { (combination) in
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                // stop the game
                isGameActive = false
                // check the winner
                if gameState[combination[0]] == 1 {
                    // player 1 (cross) has won
                    print("player 1")
                    result = "Player 1 has won"
                } else {
                    // player 2 (nought) has won
                    print("player 2")
                    result = "Player 2 has won"
                }
            }
        }
    }
}
