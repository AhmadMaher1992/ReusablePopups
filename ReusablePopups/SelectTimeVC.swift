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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectTime(_ sender: UIButton) {
        let sb = UIStoryboard(name: "DatePopup", bundle: nil)
        let popUp = sb.instantiateViewController(withIdentifier: "DatePopup")
        present(popUp, animated: true)
        
    }
    
}
