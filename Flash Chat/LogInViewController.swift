//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit

import Firebase

class LogInViewController: UIViewController {
    
    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func logInPressed(_ sender: AnyObject) {
        FIRAuth.auth()?.signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                
                print(error!)
                
            }
            else{
                print("Success")
                self.performSegue(withIdentifier: "gotomenu1", sender: self)
                
            }
            
        }
        
        //TODO: Log in the user
        
        
    }
    
    
    
    
}  

