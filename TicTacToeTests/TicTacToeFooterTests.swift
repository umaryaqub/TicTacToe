//
//  TicTacToeFooterTests.swift
//  TicTacToeTests
//
//  Created by Umar Yaqub on 14/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeFooterTests: XCTestCase, TicTacToeFooterDelegate {
    
    var sut: TicTacToeFooter!
    var didFireTicTacToeFooterDelegate: Bool!
    
    override func setUp() {
        super.setUp()
        
        sut = TicTacToeFooter(frame: .zero)
        sut.delegate = self
        didFireTicTacToeFooterDelegate = false
    }
    
    override func tearDown() {
        sut = nil
        didFireTicTacToeFooterDelegate = nil
        super.tearDown()
    }
    
    func testTicTacToeFooterDelegateWasFired() {
        sut.playAgainButton.sendActions(for: .touchUpInside)
        XCTAssert(didFireTicTacToeFooterDelegate)
    }
    
    
    func didTapPlayAgain() {
        didFireTicTacToeFooterDelegate = true
    }
    
    
}
