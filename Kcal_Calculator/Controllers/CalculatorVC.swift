import UIKit

class CalculatorVC: UIViewController {
    
    // MARK: - Variables
    
    
    // MARK: - UI components
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "SpoqaHanSansNeo-Bold", size: 25)
        label.text = "칼로리 계산기"
        return label
    }()
    
    private let dryBT = Button(buttonSize: .small, purpose: .dryFeed)
    private let wetBT = Button(buttonSize: .small, purpose: .wetFeed)
    private let mixBT = Button(buttonSize: .small, purpose: .mix)
    
    private lazy var purposeButtonSV: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [dryBT, wetBT, mixBT])
        sv.axis = .horizontal
        sv.spacing = 12
        sv.alignment = .fill
        sv.distribution = .fillEqually
        
        return sv
    }()
    
    private let tableView: UITableView = {
       let table = UITableView()
        return table
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.view.backgroundColor = .white

        self.view.addSubviews([mainLabel, purposeButtonSV])
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            mainLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            mainLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            purposeButtonSV.topAnchor.constraint(equalTo: self.mainLabel.bottomAnchor, constant: 30),
            purposeButtonSV.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            purposeButtonSV.heightAnchor.constraint(equalToConstant: 50),
            purposeButtonSV.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.75)
        ])
    }
    
    // MARK: - Selectors
    

    
    
}

