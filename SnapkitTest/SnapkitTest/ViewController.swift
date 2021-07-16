//
//  ViewController.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 16/07/21.
//

import UIKit
import SnapKit

class FoodCategoryListController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setupViews() {
        
    }

}

