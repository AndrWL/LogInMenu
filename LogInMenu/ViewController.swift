//
//  ViewController.swift
//  LogInMenu
//
//  Created by Andrey on 14.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UserNameTextField: UITextField!
    
    @IBOutlet var passwordTextField:
        UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserNameTextField.layer.cornerRadius = 50
        passwordTextField.layer.cornerRadius = 50
        
    }

    @IBAction func userName() {
        let alert = UIAlertController(title: "Hey bro", message: "It User", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func password() {
        let alert = UIAlertController(title: "Hey bro", message: "Try Mars, Earth or Jupiter", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
    
    @IBAction func goMars(_ sender: UIButton) {
        if UserNameTextField.text == "User" && passwordTextField.text == "Mars" {
            let  _ = UIStoryboard(name: "Main", bundle: nil)
        let  newViewController = storyboard?.instantiateViewController(identifier: "Mars") as! MarsViewController
            self.present(newViewController, animated: true, completion: nil)
            
    
        } else if UserNameTextField.text == "User" && passwordTextField.text == "Jupiter" {
            let _ = UIStoryboard(name: "Main", bundle: nil)
            let newViecontroller = storyboard?.instantiateViewController(identifier: "Jupiter")
            as! JupiterViewController
            self.present(newViecontroller, animated: true, completion: nil)
            
            
        } else if UserNameTextField.text == "User" && passwordTextField.text == "Earth" {
     
                let _ = UIStoryboard(name: "Main", bundle: nil)
                let newViecontroller = storyboard?.instantiateViewController(identifier: "Earth")
                as! EarthViewController
                self.present(newViecontroller, animated: true, completion: nil)
                
        } else {
            
            let alert = UIAlertController(title: "Error", message: "Wrong name or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in print("tapped Cancel") }))
            present(alert, animated: true)
        }
 }
    func showAlert() {
        let alert = UIAlertController(title: "Title", message: "Wrong name or password", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in print("tapped dismiss") }))
        present(alert, animated: true)
    }
}
