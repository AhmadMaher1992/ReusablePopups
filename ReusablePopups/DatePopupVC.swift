//
//  DatePopupVC.swift
//  ReusablePopups
//
//  Created by mac on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DatePopupVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveDatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
