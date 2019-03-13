//
//  TicTacToeCellTests.swift
//  TicTacToeTests
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeCellTests: XCTestCase, TicTacToeDelegate {
    
    var sut: TicTacToeCell!
    var didFireTicTacToeCellDelegate: Bool!
    var title: String!
    
    override func setUp() {
        super.setUp()
        
        sut = TicTacToeCell(frame: .zero)
        sut.delegate = self
        didFireTicTacToeCellDelegate = false
        title = "Test"
    }
    
    override func tearDown() {
        sut = nil
        didFireTicTacToeCellDelegate = nil
        title = nil
        super.tearDown()
    }
    
    func testTicTacToeCellDelegateWasFired() {
        sut.crossNoughtButton.sendActions(for: .touchUpInside)
        XCTAssert(didFireTicTacToeCellDelegate)
    }
    
    func testCorrectSenderWasSent() {
        sut.crossNoughtButton.sendActions(for: .touchUpInside)
        let buttonLabel = sut.crossNoughtButton.titleLabel
        let text = buttonLabel?.text
        XCTAssertEqual(text!, title)
    }
    
    
    func didTapCrossNoughtButton(_ sender: UIButton) {
        didFireTicTacToeCellDelegate = true
        sender.setTitle(title, for: .normal)
    }
    
    
}
