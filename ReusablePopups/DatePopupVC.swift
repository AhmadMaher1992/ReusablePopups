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
    var showTimePicker: Bool = false
    
    //Formatted Date
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    //FormattedTime
    var formattedTime: String{
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if showTimePicker {
            titleLbl.text = "SelectTime"
            datePicker.datePickerMode = .time
            saveBtn.setTitle("SaveTime", for: .normal)
        }
    }

    @IBAction func saveDatePressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .saveDataTime, object: self)
        dismiss(animated: true)
    }
    
}
