//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    
    var sut: TicTacToe!
    var button: UIButton!
    
    override func setUp() {
        super.setUp()
        
        sut = TicTacToe()
        button = UIButton(type: .system)
    }
    
    override func tearDown() {
        sut = nil
        button = nil
        super.tearDown()
    }
    
    func testSetsPlayer1ImageCorrectly() {
        sut.play(button)
        XCTAssertEqual(button.currentImage?.pngData(), UIImage(named: "Cross")?.pngData())
    }
    
    func testDoesSwitchFromPlayer1ToPlayer2() {
        sut.play(button)
        XCTAssertEqual(sut.activePlayer, 2)
    }
    
    func testSetsPlayer2ImageCorrectly() {
        sut.activePlayer = 2
        sut.play(button)
        XCTAssertEqual(button.currentImage?.pngData(), UIImage(named: "Nought")?.pngData())
    }

    func testDoesSwitchFromPlayer2ToPlayer1() {
        sut.activePlayer = 2
        sut.play(button)
        XCTAssertEqual(sut.activePlayer, 1)
    }
    
    func testGameStaysActiveIfThereAreTurnsStillRemaining() {
        // game state is at two each with turns still remaining
        sut.gameState = [0, 0, 0, 0, 0, 2, 1, 2, 1]
        sut.play(button)
        XCTAssert(sut.isGameActive)
    }
    
    func testGameBecomesInactiveIfWinningCombinationIsReached() {
        // mnaually giving player1 3 win states
        sut.gameState = [0, 0, 0, 0, 0, 0, 1, 1, 1]
        sut.play(button)
        XCTAssertFalse(sut.isGameActive)
    }
    // game should also become inactive if there is a draw
    
    func testPlayer1IsDeclaredAWinnerIfItAchievesWinningCombination() {
        // mnaually giving player1 3 a win
        sut.gameState = [0, 2, 0, 0, 2, 0, 1, 1, 1]
        sut.play(button)
        XCTAssertEqual(sut.result, "Player 1 has won")
    }
    
    func testPlayer2IsDeclaredAWinnerIfItAchievesWinningCombination() {
        // mnaually giving player1 3 a win
        sut.gameState = [0, 1, 0, 0, 1, 0, 2, 2, 2]
        sut.play(button)
        XCTAssertEqual(sut.result, "Player 2 has won")
    }
}
