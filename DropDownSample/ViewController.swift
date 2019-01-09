//
//  ViewController.swift
//  DropDownSample
//
//  Created by Preeteesh Remalli on 10/01/19.
//  Copyright © 2019 Preeteesh Remalli. All rights reserved.
//

import UIKit
import DropDown

class ViewController: UIViewController {

    @IBOutlet weak var ddBtn: UIButton!
    let dropDown = DropDown()

    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown.anchorView = ddBtn
        dropDown.direction = .bottom
        dropDown.dataSource = ["Project 1", "Project 2", "Project 3"]
        dropDown.bottomOffset = CGPoint(x: 0, y: ddBtn.bounds.height)
        services.instance.getProjects()

    }
    @IBAction func ddBtnTapped(_ sender: Any) {
        dropDown.show()
        dropDown.selectionAction = { [weak self] (index, item) in
            self?.ddBtn.setTitle(item, for: .normal)
        }
    }
    

}

