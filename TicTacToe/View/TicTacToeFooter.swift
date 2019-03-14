//
//  TicTacToeFooter.swift
//  TicTacToe
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import UIKit

protocol TicTacToeFooterDelegate: class {
    func didTapPlayAgain()
}
class TicTacToeFooter: UICollectionReusableView {
    
    weak var delegate: TicTacToeFooterDelegate?
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    lazy var playAgainButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Play Again!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.white.cgColor
        button.isHidden = true
        button.addTarget(self, action: #selector(handlePlayAgain), for: .touchUpInside)
        return button
    }()
    @objc private func handlePlayAgain() {
        resultLabel.text = nil
        playAgainButton.isHidden = true
        delegate?.didTapPlayAgain()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        
        addSubview(resultLabel)
        addSubview(playAgainButton)
        
        setupResultLabel()
        setupPlayAgainButton()
    }
    
    private func setupResultLabel() {
        resultLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        resultLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        resultLabel.bottomAnchor.constraint(equalTo: playAgainButton.topAnchor, constant: -10).isActive = true
    }
    
    private func setupPlayAgainButton() {
        playAgainButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        playAgainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        playAgainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        playAgainButton.widthAnchor.constraint(equalTo: resultLabel.widthAnchor, multiplier: 0.5).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}
