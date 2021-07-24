//
//  CarsListController.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 16/07/21.
//

import UIKit
import SnapKit

class CarsListController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var tableview: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
        tableView.allowsSelection = true
        tableView.separatorStyle = .singleLine
        tableView.bounces = true
        return tableView
    }()

    private lazy var categorySwitcher: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: ["Manufacturer","Country"])
        segmentControl.selectedSegmentIndex = 0
        return segmentControl
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func registerCells() {
        // Register Cells here
    }

}

extension CarsListController {
    
    private func setupViews() {
        
    }
}

extension CarsListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension CarsListController: UITableViewDelegate {
    
}
