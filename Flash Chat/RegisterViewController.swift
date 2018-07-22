 
import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        FIRAuth.auth()?.createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { (User, Error) in
            if Error != nil{
                print("Error")
                
            }
            else{
                
                print("Success!")
                
                self.performSegue(withIdentifier: "gotomenu", sender: self)
                
            }
            
        })
        
        
        
    } 
    
    
}

  
