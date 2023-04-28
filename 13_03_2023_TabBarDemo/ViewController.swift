//
//  ViewController.swift
//  13_03_2023_TabBarDemo
//
//  Created by Vishal Jagtap on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    var studentNames = ["Susmita","Vaishnavi P","Pratiksha","Sharddha","Vaishnavi R"]
    var companyName = "TCS"
    var designation = "iOS Developer"
    
    var studentPlacementTableViewCell : StudentPlacementTableViewCell?
    var uiNib : UINib?
    var studentPlacementDetailsViewController : StudentlPlacementDetailsViewController?
    
    @IBOutlet weak var placementRecordTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placementRecordTableView.dataSource = self
        placementRecordTableView.delegate = self
        registerWithXIB()
    }
    
    func registerWithXIB(){
        uiNib = UINib(nibName: "StudentPlacementTableViewCell", bundle: nil)
        self.placementRecordTableView.register(uiNib, forCellReuseIdentifier: "StudentPlacementTableViewCell")
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        studentPlacementTableViewCell = self.placementRecordTableView.dequeueReusableCell(withIdentifier: "StudentPlacementTableViewCell", for: indexPath) as? StudentPlacementTableViewCell
        
        studentPlacementTableViewCell?.studentImageView.image = UIImage(named: "dummy_user")
        studentPlacementTableViewCell?.studentNameLabel.text = studentNames[indexPath.row]
        studentPlacementTableViewCell?.companyNameLabel.text = companyName
        studentPlacementTableViewCell?.designationLabel.text = designation
        return studentPlacementTableViewCell!
    }
    
    
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("The row which is cliked -- \(indexPath.row)")
        studentPlacementDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "StudentlPlacementDetailsViewController") as? StudentlPlacementDetailsViewController
        
        studentPlacementDetailsViewController?.nameContainer =  studentNames[indexPath.row]
        navigationController?.pushViewController(studentPlacementDetailsViewController!, animated: true)
    }
}
