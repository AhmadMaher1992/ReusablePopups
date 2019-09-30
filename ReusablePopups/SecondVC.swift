//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by mac on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    
    @IBOutlet weak var dateLbl: UILabel!
    var observer: NSObjectProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if  segue.identifier == "DatePopupVC" {
               let popUp = segue.destination as! DatePopupVC
                popUp.showTimePicker = false
           // popUp.onSave = onSave
            popUp.onSave = {(data) in
                self.dateLbl.text = data
                
            }
           }
           
       }
    func onSave(_ data: String) -> () {
        dateLbl.text = data
    }


}

