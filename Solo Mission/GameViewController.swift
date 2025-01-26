//
//  GameViewController.swift
//  Solo Mission
//
//  Created by user@59 on 24/01/2025.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
    
  //  var backingAudio = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let filePath = Bundle.main.path(forResource: "Backing Audio", ofType: "mp3")
//        let audioNSURL = URL(fileURLWithPath: filePath!)
//        
//        do {
//            backingAudio = try AVAudioPlayer(contentsOf: audioNSURL)
//        } catch {
//            
//            return print("Cannot Find The Audio")
//        }
//        
//        backingAudio.numberOfLoops = -1
//        backingAudio.play()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
//            if let scene = SKScene(fileNamed: "GameScene") {
            let scene = MainMenuScene(size : CGSize(width: 1536, height: 2048)) // to make game universal size
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
//            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = false
        }
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
