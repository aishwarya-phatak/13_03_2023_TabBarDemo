//
//  StudentlPlacementDetailsViewController.swift
//  13_03_2023_TabBarDemo
//
//  Created by Vishal Jagtap on 28/04/23.
//

import UIKit

class StudentlPlacementDetailsViewController: UIViewController {

    @IBOutlet weak var studentNameLabel: UILabel!
    var nameContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       bindDataFromContainerToLabel()
    }
    
    func bindDataFromContainerToLabel(){
        self.studentNameLabel.text = nameContainer
    }
}
