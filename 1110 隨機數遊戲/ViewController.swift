//
//  ViewController.swift
//  1110 隨機數遊戲
//
//  Created by 泳逸 李 on 2017/11/10.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    let fourOptions = ["stick","tiger","chicken","worm"]
    var answer = [String]()
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultNPCImage: UIImageView!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var stickImage: UIImageView!
    @IBOutlet weak var tigerImage: UIImageView!
    @IBOutlet weak var chickenImage: UIImageView!
    @IBOutlet weak var wormImage: UIImageView!
    @IBOutlet weak var stickButton: UIButton!
    @IBOutlet weak var tigerButton: UIButton!
    @IBOutlet weak var chickenButton: UIButton!
    @IBOutlet weak var wormButton: UIButton!
    
    @IBAction func stickButton(_ sender: UIButton) {
        playGame()
        if answer == ["stick"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "stick")
        }else if answer == ["tiger"]{
            resultLabel.text = "恭喜你贏惹"
            resultNPCImage.image = UIImage(named: "youwin")
            resultImage.image = UIImage(named: "tiger")
        }else if answer == ["chicken"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "chicken")
        }else if answer == ["worm"]{
            resultLabel.text = "哈哈輸惹吧"
            resultNPCImage.image = UIImage(named: "youlose")
            resultImage.image = UIImage(named: "worm")
        }
        
        tigerImage.alpha = 0.2
        chickenImage.alpha = 0.2
        wormImage.alpha = 0.2
        
        stickButton.isEnabled = false
        tigerButton.isEnabled = false
        chickenButton.isEnabled = false
        wormButton.isEnabled = false
    }
    
    @IBAction func tigerButton(_ sender: UIButton) {
        playGame()
        if answer == ["stick"]{
            resultLabel.text = "哈哈你輸惹吧"
            resultNPCImage.image = UIImage(named: "youlose")
            resultImage.image = UIImage(named: "stick")
        }else if answer == ["tiger"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "tiger")
        }else if answer == ["chicken"]{
            resultLabel.text = "恭喜你贏惹"
            resultNPCImage.image = UIImage(named: "youwin")
            resultImage.image = UIImage(named: "chicken")
        }else if answer == ["worm"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "worm")
        }
        stickImage.alpha = 0.2
        chickenImage.alpha = 0.2
        wormImage.alpha = 0.2
        
        stickButton.isEnabled = false
        tigerButton.isEnabled = false
        chickenButton.isEnabled = false
        wormButton.isEnabled = false
    }
    
    @IBAction func chickenButton(_ sender: UIButton) {
        playGame()
        if answer == ["stick"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "stick")
        }else if answer == ["tiger"]{
            resultLabel.text = "哈哈你輸惹吧"
            resultNPCImage.image = UIImage(named: "youlose")
            resultImage.image = UIImage(named: "tiger")
        }else if answer == ["chicken"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "chicken")
        }else if answer == ["worm"]{
            resultLabel.text = "恭喜你贏惹"
            resultNPCImage.image = UIImage(named: "youwin")
            resultImage.image = UIImage(named: "worm")
        }
        tigerImage.alpha = 0.2
        stickImage.alpha = 0.2
        wormImage.alpha = 0.2
        
        stickButton.isEnabled = false
        tigerButton.isEnabled = false
        chickenButton.isEnabled = false
        wormButton.isEnabled = false
    }
    
    @IBAction func wormButton(_ sender: UIButton) {
        playGame()
        if answer == ["stick"]{
            resultLabel.text = "恭喜你贏惹"
            resultNPCImage.image = UIImage(named: "youwin")
            resultImage.image = UIImage(named: "stick")
        }else if answer == ["tiger"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "tiger")
        }else if answer == ["chicken"]{
            resultLabel.text = "哈哈你輸惹吧"
            resultNPCImage.image = UIImage(named: "youlose")
            resultImage.image = UIImage(named: "chicken")
        }else if answer == ["worm"]{
            resultLabel.text = "平手啦"
            resultNPCImage.image = UIImage(named: "draw")
            resultImage.image = UIImage(named: "worm")
        }
        tigerImage.alpha = 0.2
        chickenImage.alpha = 0.2
        stickImage.alpha = 0.2
        
        stickButton.isEnabled = false
        tigerButton.isEnabled = false
        chickenButton.isEnabled = false
        wormButton.isEnabled = false
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        resultLabel.text = "Result"
        resultNPCImage.image = UIImage(named: "npc")
        resultImage.image = UIImage(named: "questionmark")
        
        stickImage.alpha = 1
        tigerImage.alpha = 1
        chickenImage.alpha = 1
        wormImage.alpha = 1
        
        stickButton.isEnabled = true
        tigerButton.isEnabled = true
        chickenButton.isEnabled = true
        wormButton.isEnabled = true
        
        resultLabel.isHidden = true

    }
    
    func playGame(){
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 3)
        let randomNumber = randomDistribution.nextInt()
        answer = [fourOptions[randomNumber]]
        resultLabel.isHidden = false
        print(answer)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

