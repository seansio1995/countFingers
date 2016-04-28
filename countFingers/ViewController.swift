//
//  ViewController.swift
//  countFingers
//
//  Created by Sean Xiao on 4/28/16.
//  Copyright (c) 2016 Sean Xiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var guessNum: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        var randomNum=arc4random_uniform(6)
        
        if guessNum.text.toInt() != nil {
    
        if Int(randomNum) == guessNum.text.toInt(){
            result.text="You guess correctly"
        }
        
        else
        {
            result.text="Wrong! The correct is \(randomNum)"
        }
    }
        else
        {
            result.text="Please enter a number"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

