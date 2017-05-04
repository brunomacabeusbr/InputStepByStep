//
//  ViewController.swift
//  Example
//
//  Created by Bruno Macabeus Aquino on 03/05/17.
//  Copyright © 2017 Bruno Macabeus Aquino. All rights reserved.
//

import UIKit
import InputStepByStep

class ViewController: UIViewController, CollectionStepByStepProtocol {
    
    @IBOutlet weak var container: UIView!
    var containerStepByStep: CollectionStepByStep?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
    }
    
    var cellConfigList: [CellCreateGrid] = [
        .name("part 1"),
        CellCreateGrid.input(ConfigInput(name: "user", label: "User"), cellName: "", currentValue: ""),
        .name("part 2"),
        CellCreateGrid.input(ConfigInput(name: "password", label: "Password"), cellName: "", currentValue: ""),
        CellCreateGrid.input(ConfigInput(name: "spassword", label: "Second password"), cellName: "", currentValue: ""),
        .name("part 3"),
        CellCreateGrid.input(ConfigInput(name: "firtname", label: "Your first name"), cellName: "", currentValue: ""),
        CellCreateGrid.input(ConfigInput(name: "lastname", label: "Your last name"), cellName: "", currentValue: ""),
        CellCreateGrid.input(ConfigInput(name: "othername", label: "Other name"), cellName: "", currentValue: ""),
        .name("part 4"),
        CellCreateGrid.input(ConfigInput(name: "github", label: "Github"), cellName: "", currentValue: ""),
        CellCreateGrid.input(ConfigInput(name: "facebook", label: "Facebook"), cellName: "", currentValue: ""),
        CellCreateGrid.input(ConfigInput(name: "linkedin", label: "Linkedin"), cellName: "", currentValue: ""),
        CellCreateGrid.input(ConfigInput(name: "email", label: "E-Mail"), cellName: "", currentValue: ""),
        .finish()
    ]
    
    func cellFinishAction() {
        print("do something...")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueInputStepyBtStep" {
            self.containerStepByStep = (segue.destination as! CollectionStepByStep)
            self.containerStepByStep!.delegate = self
        }
    }
}
