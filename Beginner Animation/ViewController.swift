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
       
//        let tap = UITapGestureRecognizer(target: self, action: #selector(blockTapped))
//        block.addGestureRecognizer(tap)
//        block.isUserInteractionEnabled = true
    }

//    @objc func blockTapped() {
//        UIView.animate(withDuration: 1.2) {
//
//            let sizeMutliplier: CGFloat =  2.5
////            let currentBlockFrame = self.block.frame
////            self.block.frame.size = CGSize(width: currentBlockFrame.width * sizeMutliplier, height: currentBlockFrame.height * sizeMutliplier)
//
//            let newWidth = self.block.frame.width * sizeMutliplier
//            let newHeight = self.block.frame.height * sizeMutliplier
//
//            let newX = self.block.frame.origin.x - (newWidth - self.block.frame.size.width) / 2
//            let newY = self.block.frame.origin.y - (newHeight - self.block.frame.size.height) / 2
//
//            self.block.frame = CGRect(x: newX, y: newY, width: newWidth, height: newHeight)
//        }
//    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.upMove()
        }
        
    }
    
    func upMove() {
        UIView.animate(withDuration: 1, animations: {
            self.block.frame.origin = CGPoint(x: self.view.center.x - (self.block.frame.width / 2), y: 0)
        }) { (success) in
            self.rightMove()
        }
    }
    
    func rightMove() {
        UIView.animate(withDuration: 1, animations: {
            self.block.frame.origin = CGPoint(x: self.view.frame.size.width - self.block.frame.width, y: self.view.center.y - (self.block.frame.size.height / 2))
        }) { (success) in
            self.downMove()
        }
    }
    
    func downMove() {
        UIView.animate(withDuration: 1, animations: {
            self.block.frame.origin = CGPoint(x: self.view.center.x - (self.block.frame.width / 2), y:
                self.view.frame.size.height - self.block.frame.size.height)
        }) { (success) in
            self.leftMove()
        }
    }
    
    func leftMove() {
        UIView.animate(withDuration: 1, animations: {
            self.block.frame.origin = CGPoint(x: 0,y:
                self.view.center.y - (self.block.frame.size.height / 2))
        }) { (success) in
            self.resetMove()
        }
    }
    
    func resetMove() {
        UIView.animate(withDuration: 1) {
             self.block.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
        }
       
    }
}

