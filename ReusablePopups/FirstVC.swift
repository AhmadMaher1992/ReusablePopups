//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by mac on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var dateLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
         NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDataTime, object: nil)
    }
    @objc func handlePopupClosing (notification: Notification){
        let dateVC = notification.object as! DatePopupVC
        dateLbl.text = dateVC.formattedDate
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "DatePopupVC" {
            let destination = segue.destination as? DatePopupVC
            destination?.showTimePicker = false
        }
        
    }


}

