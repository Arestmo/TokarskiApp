//
//  SecondScreenViewController.swift
//  TokarskiApp
//
//  Created by Mateusz T on 04.06.2020.
//  Copyright © 2020 Mateusz T. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {
    @IBOutlet weak var ResultValue: UILabel!
    
    var SendedText = ""
    
    var pearsons: [pearson]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultValue.text = 
        
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

class pearson {
    var name: String
    var surname: String
    var date: Date
    
    init(name: String, surname: String, date: Date) {
        self.name = name
        self.surname = surname
        self.date = date
    }
}
