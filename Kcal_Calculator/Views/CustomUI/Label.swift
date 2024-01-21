//
//  Label.swift
//  Kcal_Calculator
//
//  Created by Macbook on 1/20/24.
//

import UIKit

class Label: UILabel {
    
    init(title: String) {
        super.init(frame: .zero)
        self.textColor = .white
        self.textAlignment = .left
        self.font = UIFont(name: "SpoqaHanSansNeo-Bold", size: 20)
        self.text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
