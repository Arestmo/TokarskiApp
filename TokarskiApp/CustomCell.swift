//
//  CustomCell.swift
//  TokarskiApp
//
//  Created by Mateusz T on 07.06.2020.
//  Copyright © 2020 Mateusz T. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    var name : String?
    var surname : String?
    var date : Date?
    
    let df = DateFormatter()
    
    var nameView : UILabel = {
        var textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var surnameView : UILabel = {
        var textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var dateView : UILabel = {
        var textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(nameView)
        self.addSubview(surnameView)
        self.addSubview(dateView)
        
        nameView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        nameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        nameView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        nameView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        surnameView.leftAnchor.constraint(equalTo: self.nameView.rightAnchor, constant: 20).isActive = true
        surnameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        surnameView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        surnameView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        dateView.leftAnchor.constraint(equalTo: self.surnameView.rightAnchor, constant: 10).isActive = true
        dateView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        dateView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        dateView.widthAnchor.constraint(equalToConstant: 100).isActive = true
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        df.dateFormat = "YYYY-MM-dd"
        if let name = name {
            nameView.text = name
        }
        if let surname = surname {
            surnameView.text = surname
        }
        if let date = date {
            dateView.text = df.string(from: date)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
