//
//  ViewController.swift
//  TokarskiApp
//
//  Created by Mateusz T on 03.06.2020.
//  Copyright © 2020 Mateusz T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImieTextField: UITextField!
    @IBOutlet weak var NazwiskoTextField: UITextField!
    @IBOutlet weak var DataDataPicker: UIDatePicker!
    
    var toSend = pearson(name: "", surname: "", date: Date())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func ClearButton(_ sender: UIButton) {
        ImieTextField.text = ""
        NazwiskoTextField.text = ""
        DataDataPicker.date = Date()
    }
    @IBAction func NextButton(_ sender: UIButton) {
        let nameText = String(ImieTextField.text!)
        let surnameText = String(NazwiskoTextField.text!)
        let date = DataDataPicker.date
        self.toSend = pearson(name:nameText,surname: surnameText,date:date)
        performSegue(withIdentifier: "MainToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondScreenViewController
        vc.pearsons.append(self.toSend)
    }
    
}

