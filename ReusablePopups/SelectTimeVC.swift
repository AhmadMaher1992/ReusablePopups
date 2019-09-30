//
//  SelectTimeVC.swift
//  ReusablePopups
//
//  Created by mac on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class SelectTimeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
       
    }
   
    @IBAction func selectTime(_ sender: UIButton) {
        let sb = UIStoryboard(name: "DatePopup", bundle: nil)
        let popUp = sb.instantiateViewController(withIdentifier: "DatePopup") as! DatePopupVC
        popUp.showTimePicker = true
        present(popUp, animated: true)
        
    }
    
}
