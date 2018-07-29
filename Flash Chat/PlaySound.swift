//
//  Message.swift
//  Flash Chat
//
//  This is the model class that represents the blueprint to play sound
import Foundation
import AVFoundation

class PlaySound: NSObject, AVAudioPlayerDelegate {
 
    var player:AVAudioPlayer = AVAudioPlayer()
    var audioPlayer : AVAudioPlayer!
    
    func soundDoor(){
        
        let soundURL = Bundle.main.url(forResource: "door", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    func soundExplosion(){
        
        let soundURL = Bundle.main.url(forResource: "explosion", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    func soundRomance(){
        
        let soundURL = Bundle.main.url(forResource: "romance", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    func soundLaser(){
        
        let soundURL = Bundle.main.url(forResource: "laser", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    
    func soundFootsteps(){
        
        let soundURL = Bundle.main.url(forResource: "footsteps", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    func soundScreamfemale(){
        
        let soundURL = Bundle.main.url(forResource: "screamfemale", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    func backgroundSound(){
        
        let soundURL = Bundle.main.url(forResource: "background", withExtension: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
     
            audioPlayer.play()
        
        
    }
    func backgroundSound1(){
        do
        {
            let audioPath = Bundle.main.path(forResource: "background", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //PROCESS ERROR
        }
        
        let session = AVAudioSession.sharedInstance()
        
        do
        {
            try session.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch
        {
            
        }
        for _ in 1...100{
        player.play()
        }
        
    }
}
