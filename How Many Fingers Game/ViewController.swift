//
//  ViewController.swift
//  How Many Fingers Game
//
//  Created by Андрей Понамарчук on 30/07/2018.
//  Copyright © 2018 Андрей Понамарчук. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usersAnswer: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        let randomFingers = arc4random_uniform(6)
        if usersAnswer.text == String(randomFingers) {
            result.text = "You're right!"
        } else {
            result.text = "Wrong! It was a \(randomFingers)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

