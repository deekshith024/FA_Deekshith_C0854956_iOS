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
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        
    }


}

