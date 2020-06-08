//
//  SecondScreenViewController.swift
//  TokarskiApp
//
//  Created by Mateusz T on 04.06.2020.
//  Copyright © 2020 Mateusz T. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var ResultValue: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var SendedText = ""
    
    var pearsons : [pearson] = []
    var selected_id = 0
    var pearsonToSend : pearson!
    
    
    let animals = ["Cat", "Dog", "Horse"]
    let df = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stringToDate = "2020-01-01"
        df.dateFormat = "YYYY-MM-dd"
        pearsons.append(pearson(name: "ALA", surname: "ma", date: df.date(from: stringToDate)!))
        pearsons.append(pearson(name: "ALA2", surname: "ma2", date: df.date(from: stringToDate)!))
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pearsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as! CustomCell
        cell.name = pearsons[indexPath.row].name
        cell.surname = pearsons[indexPath.row].surname
        cell.date = pearsons[indexPath.row].date
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected_id = indexPath.row
        self.pearsonToSend = pearsons[selected_id]
        performSegue(withIdentifier: "ListToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ListToDetail")
        {
            let send = segue.destination as! DetailsScreen
            send.getPearson = self.pearsonToSend
        }
        
    }
    
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


