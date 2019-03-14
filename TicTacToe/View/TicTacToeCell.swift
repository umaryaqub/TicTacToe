//
//  TicTacToeCell.swift
//  TicTacToe
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import UIKit

protocol TicTacToeDelegate: class {
    func didTapCrossNoughtButton(_ sender: UIButton)
}
class TicTacToeCell: UICollectionViewCell {
    
    weak var delegate: TicTacToeDelegate?
    
    lazy var crossNoughtButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleCrossNoughtAction), for: .touchUpInside)
        return button
    }()
    @objc private func handleCrossNoughtAction(sender: UIButton) {
        delegate?.didTapCrossNoughtButton(sender)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(crossNoughtButton)
        crossNoughtButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        crossNoughtButton.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        crossNoughtButton.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        crossNoughtButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}
