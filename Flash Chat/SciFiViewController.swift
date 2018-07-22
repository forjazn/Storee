//
//  SciFiViewController.swift
//  Storee
//
//  Created by Nuno Forjaz on 20/07/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class SciFiViewController: UIViewController {

    var storyindex = 1
    let part1 = "The story startes here "
    let answer1a = "left"
    let answer1b = "right"
    let part2a = "after the first left"
    let part2b = "after the first right"
    let answer2a1 = "2a1"
    let answer2a2 = "2a2"
    let answer2b1 = "2b1"
    let answer2b2 = "2b2"
    let part3a = "3a"
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var story: UITextView!
   @IBOutlet weak var reset: UIButton!
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
    
    @IBAction func buttonpressed(_ sender: UIButton) {
      
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
            storyindex = 0
            
        }
            else if storyindex == 0 && sender.tag == 3 {
                
                story.text = part1
                storyindex = 1
                button1.isHidden = false
                button2.isHidden = false
                reset.isHidden = true

        }
    
        
    }
    


}
