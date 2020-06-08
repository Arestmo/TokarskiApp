//
//  AppInfoPopUP.swift
//  TokarskiApp
//
//  Created by Mateusz T on 08.06.2020.
//  Copyright © 2020 Mateusz T. All rights reserved.
//

import UIKit

class AppInfoPopUP: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.text = Bundle.main.infoDictionary![kCFBundleNameKey as String] as? String
        
    }
    
    @IBAction func ClosePopUp(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
