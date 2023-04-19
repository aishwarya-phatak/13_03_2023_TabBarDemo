//
//  HomeViewController.swift
//  13_03_2023_TabBarDemo
//
//  Created by Vishal Jagtap on 18/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var bitcodeInformationTextView: UITextView!
    @IBOutlet weak var companyLogoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindImageToImageView()
        
    }
    
    
    func bindImageToImageView(){
        companyLogoImageView.image = UIImage(named: "bitcode_logo")
    }
}
