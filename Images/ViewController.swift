//
//  ViewController.swift
//  Images
//
//  Created by Akshay on 04/01/15.
//  Copyright (c) 2015 SweetPi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameState = [0,0,0,0,0,0,0,0,0]
    let win = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBOutlet weak var banner: UILabel!
       @IBOutlet weak var button0: UIButton!
    var number = 1
    var winner = 0
    @IBAction func buttonPressed(sender: AnyObject) {
        print(sender.tag)
        
        if(gameState[sender.tag]==0 && winner == 0)
        {
        var image = UIImage()
            print(winner)
        if(number % 2 == 0 )
        {
            
              image = UIImage(named: "naught.png")!
            gameState[sender.tag] = 1
        }
else        {
             image = UIImage(named: "cross.png")!
            gameState[sender.tag] = 2
        }
        number++
        sender.setImage(image, forState: .Normal)
    }
        for combinations in win{
            
            if(gameState[combinations[0]] == gameState[combinations[1]] && gameState[combinations[1]] == gameState[combinations[2]] && gameState[combinations[0]] != 0)
            {
                print("WE have a winner")
                winner = gameState[combinations[0]]
            }
        }
        if(winner != 0 )
        {
            print("we have winner")
            banner.text = "WINNER WINNER"
            banner.alpha = 1
        }
    }
    
    @IBOutlet weak var boy: UIImageView!
    
    var count = 1;
    
    
        override func viewDidLoad() {
                    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

