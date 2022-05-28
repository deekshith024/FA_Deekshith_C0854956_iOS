//
//  ViewController.swift
//  FA_Deekshith_C0854956_iOS
//
//  Created by Deekshith Reddy on 2022-05-27.
//

import UIKit

class ViewController: UIViewController {

   var player = 1
    var state = [0,0,0,0,0,0,0,0,0]
    let win = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6] ]
    var stateIsActive = true
    
    @IBAction func Buttons(_ sender: UIButton)
    {
        if (state[sender.tag-1] == 0 && stateIsActive == true)
        {
            state[sender.tag-1] = player
            if ( player == 1)
            {
                sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())
                player = 2
            }
            else
            {
                sender.setImage(UIImage(named: "nought.png"), for: UIControl.State())
                player = 1
            }
        }
        
        // to display win or lose
        
        for combination in win
        {
            if state[combination[0]] != 0 && state[combination[0]] == state[combination[1]] && state[combination[1]] == state[combination[2]]
            {
                stateIsActive = false
                
                if state[combination[0]] == 1
                {
                    display.text = "CROSS HAS WON!"
                }
                else
                {
                    display.text = "NOUGHT HAS WON!"
                }
                display.isHidden = false
                
            }
              
            stateIsActive = false
            for i in state
            {
                if i == 0
                {
                    stateIsActive = true
                    break
                }
            }
            if stateIsActive == false
            {
                display.text = "ITS A DRAW"
                display.isHidden = false
            }
            //
            
            //
            
        }
        
       //
        
        
        
    }
    
    
    @IBOutlet weak var display: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // swipe gesture
        
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        downSwipe.direction = .down
        view.addGestureRecognizer(downSwipe)
        
        
    }
    
    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case .down:
          
            state = [0,0,0,0,0,0,0,0,0]
            stateIsActive = true
            player = 1
            display.isHidden = true
            //
    
                //display.isHidden = false
            
           //working pic
            
            
            
            for i in 1...9
            {
                let Button = view.viewWithTag(i) as! UIButton
                Button.setImage(nil, for: UIControl.State())
            }
            
            
            print(" game is rest")
        
        default:
            break
            
        }
        
    }


}

