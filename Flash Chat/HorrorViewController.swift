//
//  HorrorViewController.swift
//  Storee
//
//  Created by Nuno Forjaz on 19/07/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class HorrorViewController: UIViewController {
    
    var storyindex = 1
    let part1 = "a"
    let answer1a = "1"
    let answer1b = "2"
    let part2a = "2a"
    let part2b = "2b"
    let answer2a1 = "2a1"
    let answer2a2 = "2a2"
    let answer2b1 = "2b1"
    let answer2b2 = "2b2"
    let part3a = "3a"
    
    
    
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var story: UITextView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        story.text = part1
        button1.setTitle(answer1a, for: .normal)
        button2.setTitle(answer1b, for: .normal)
        reset.isHidden = true
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 && storyindex == 1{
            story.text = part2a
            button1.setTitle(answer2a1, for: .normal)
            button2.setTitle(answer2a2, for: .normal)
            storyindex = 2

        }
        
        else if sender.tag == 2 && storyindex == 1 {
            story.text = part2b
            button1.setTitle(answer2b1, for: .normal)
            button2.setTitle(answer2b2, for: .normal)
            storyindex = 3
        }
        
        else if storyindex == 2 && sender.tag == 1 || sender.tag == 2{
            
            story.text = part3a
            button1.isHidden = true
            button2.isHidden = true
            reset.isHidden = false
        
        }
        
     
    }
    
    
}
