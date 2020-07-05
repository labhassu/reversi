//
//  GameViewController.swift
//  reversi
//
//  Created by はすゆういち on 2020/07/04.
//  Copyright © 2020 reversi. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var board: UIStackView!
    let game = GameClass()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        var tag : Int = 0
        for views in board.subviews {
            for view in views.subviews {
                let v = view as! UIButton
                v.tag = tag
                if tag == 35 || tag == 28 {
                    v.setImage(UIImage(named: "black") , for: UIControl.State.normal)
                    v.tintColor = UIColor.black
                } else if tag == 36 || tag == 27 {
                    v.setImage(UIImage(named: "white") , for: UIControl.State.normal)
                    v.tintColor = UIColor.white
                } else {
                    v.setImage(UIImage(named: "green") , for: UIControl.State.normal)
                    v.tintColor = UIColor(displayP3Red: 0.0, green: 0.5, blue: 0.0, alpha: 1.0)
                }
                v.setTitle("", for: UIControl.State.normal)
                tag += 1
            }
        }
        
        game.test()
        /*
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
 */
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
