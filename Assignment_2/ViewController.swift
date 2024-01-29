//
//  ViewController.swift
//  Assignment_2
//
//  Created by user237118 on 1/23/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var countryName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var displayInfo: UITextView!
    @IBOutlet weak var invLable: UILabel!
    
    @IBAction func firstName(_ sender: UITextField) {
    }
    
    @IBAction func lastName(_ sender: UITextField) {
    }
    
    @IBAction func countryName(_ sender: UITextField) {
    }
    
    @IBAction func age(_ sender: UITextField) {
    }
    
    

    @IBAction func addInfo(_ sender: Any){
        if(firstName.text == nil || firstName.text!.isEmpty || lastName.text == nil || lastName.text!.isEmpty || countryName.text == nil || countryName.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            
            invLable.isHidden=false
            invLable.text = "Please Enter Missing Data"
        }
        else
        {
            showInfo()
            invLable.isHidden=true
            
        }
    }
    
    
    @IBAction func submitInfo(_ sender: Any){
        if(firstName.text == nil || firstName.text!.isEmpty || lastName.text == nil || lastName.text!.isEmpty || countryName.text == nil || countryName.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            
            invLable.isHidden=false
            invLable.text = "Please Complete Missing Data..!!"
        }
        else
        {
            invLable.isHidden = false
            invLable.text = "Successfully Submitted Data"
        }
        
        
    }
    
    @IBAction func clearInfo(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        age.text = ""
        displayInfo.text = ""
        invLable.isHidden = true
    }
    
    func showInfo(){
        displayInfo.text = "Full Name: \(firstName.text!) \(lastName.text!)\nCountry:\(countryName.text!)\nAge:\(age.text!)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        invLable.isHidden = true
    }


}

