//
//  Button.swift
//  Kcal_Calculator
//
//  Created by Macbook on 1/20/24.
//

import UIKit

class Button: UIButton {
    
    enum Purpose {
        case dryFeed
        case wetFeed
        case mix
        case result
    }
    
    enum ButtonSize {
        case small
        case big
    }
    
    init(buttonSize: ButtonSize, purpose: Purpose) {
        super.init(frame: .zero)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        self.setTitleColor(.white, for: .normal)
        
        switch buttonSize {
        case .small:
            self.titleLabel?.font = UIFont(name: "SpoqaHanSansNeo-Bold", size: 20)
        case .big:
            self.titleLabel?.font = UIFont(name: "SpoqaHanSansNeo-Bold", size: 25)
        }
        
        switch purpose {
        case .dryFeed:
            self.backgroundColor = UIColor(hexCode: "ffb3c6")
            self.setTitle("건식", for: .normal)
        case .wetFeed:
            self.backgroundColor = UIColor(hexCode: "ff8fab")
            self.setTitle("습식", for: .normal)
        case .mix:
            self.backgroundColor = UIColor(hexCode: "fb6f92")
            self.setTitle("혼합", for: .normal)
        case .result:
            self.backgroundColor = UIColor(hexCode: "9d8189")
            self.setTitle("계산하기", for: .normal)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
