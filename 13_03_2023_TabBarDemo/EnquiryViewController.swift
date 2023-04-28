//
//  ProfileViewController.swift
//  13_03_2023_TabBarDemo
//
//  Created by Vishal Jagtap on 18/04/23.
//

import UIKit

class EnquiryViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailIdTextField: UITextField!
    @IBOutlet weak var yearOfPassingTextField: UITextField!
    @IBOutlet weak var qualificationTextField: UITextField!
    @IBOutlet weak var areaOfInterestTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialDisplay()
    }
    
    func initialDisplay(){
        self.welcomeLabel.text = "Welcome To Bitcode!"
        welcomeLabel.backgroundColor = UIColor(cgColor: CGColor(red: 10.0, green: 0.0, blue: 50.0, alpha: 0.5))
        welcomeLabel.textColor = UIColor.white
    }
    
    
    @IBAction func btnSubmitClick(_ sender: Any){
        let enquiryDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "EnquiryDetailsViewController") as!
        EnquiryDetailsViewController
        
        navigationController?.popViewController(animated: true)
    }
}
