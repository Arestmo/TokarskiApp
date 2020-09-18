//
//  DetailsScreen.swift
//  TokarskiApp
//
//  Created by Mateusz T on 08.06.2020.
//  Copyright © 2020 Mateusz T. All rights reserved.
//

import UIKit

class DetailsScreen: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    let df = DateFormatter()
    
    var getPearson : pearson!

    override func viewDidLoad() {
        super.viewDidLoad()
        df.dateFormat = "yyyy-MM-dd"
        
        nameLabel.text = getPearson.name
        surnameLabel.text = getPearson.surname
        dateLabel.text = df.string(from: getPearson.date)

        // Do any additional setup after loading the view.
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
