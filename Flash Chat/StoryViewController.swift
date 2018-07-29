 

//
//  ViewController.swift
//  Flash Chat
//
//  Created by Angela Yu on 29/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase
class StoryViewController: UIViewController {
    
    // Declare instance variables here

    
    var audioPlayer : AVAudioPlayer!
    
 var PlaySounds = PlaySound()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    
    @IBAction func Horrorlink(_ sender: UIButton) {
        PlaySounds.soundScreamfemale()
    }
    @IBAction func Adventure(_ sender: UIButton) {
        PlaySounds.soundExplosion()
    }
    @IBAction func Scifi(_ sender: UIButton) {
        PlaySounds.soundLaser()
    }
    
    @IBAction func Romance(_ sender: UIButton) {
        PlaySounds.soundRomance()
    }
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
      
        do{
        try FIRAuth.auth()?.signOut()
            
            navigationController?.popToRootViewController(animated: true)
        }
        catch {
            print("Error")
            
        }
    
        
    }
    


}
 
 
