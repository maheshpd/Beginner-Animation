//
//  ViewController.swift
//  Beginner Animation
//
//  Created by Mahesh Prasad on 17/10/19.
//  Copyright © 2019 Create Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var block: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let tap = UITapGestureRecognizer(target: self, action: #selector(blockTapped))
        block.addGestureRecognizer(tap)
        block.isUserInteractionEnabled = true
    }

    @objc func blockTapped() {
        UIView.animate(withDuration: 1.2) {
            
            let sizeMutliplier: CGFloat =  2.5
//            let currentBlockFrame = self.block.frame
//            self.block.frame.size = CGSize(width: currentBlockFrame.width * sizeMutliplier, height: currentBlockFrame.height * sizeMutliplier)
            
            let newWidth = self.block.frame.width * sizeMutliplier
            let newHeight = self.block.frame.height * sizeMutliplier
            
            let newX = self.block.frame.origin.x - (newWidth - self.block.frame.size.width) / 2
            let newY = self.block.frame.origin.y - (newHeight - self.block.frame.size.height) / 2
            
            self.block.frame = CGRect(x: newX, y: newY, width: newWidth, height: newHeight)
        }
    }

}

