//
//  ViewController.swift
//  SquareGame
//
//  Created by LizOk&Same on 29.10.25.
//

import UIKit

class ViewController: UIViewController {
    let squareSize: CGFloat = 50
    var startX: CGFloat = 0
    var startY: CGFloat = 0
    
    
    @IBOutlet weak var generateSquare: UIButton!
    override func viewDidLoad() {
    }
    
    @IBAction func generateSquare(_ sender: UIButton) {
        generateSquare.isHidden = true
        while startY + squareSize <= self.view.frame.height{
            while startX + squareSize <= self.view.frame.width{
                let square = UIView(frame: CGRect(x: startX, y: startY, width: squareSize, height: squareSize))
                square.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
                self.view.addSubview(square)
                startX += squareSize
            }
            startX = 0
            startY += squareSize
        }
    }
}
    
    
    
    
    
