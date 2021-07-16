//
//  FoodCategoryView.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 16/07/21.
//

import UIKit
import SnapKit

protocol FoodCategoryViewType {
    var categoryImageURL: URL? {get}
    var categoryTitle: String {get}
}

class FoodCategoryView: UIView, FoodCategoryViewType {
    let categoryImageURL: URL?
    let placeHolderImageName: String
    let categoryTitle: String

    init(categoryTitle: String, categoryImageURL: URL?, placeHolderImageName: String? = nil ) {
        self.categoryImageURL = categoryImageURL
        self.placeHolderImageName = placeHolderImageName ?? ""
        self.categoryTitle = categoryTitle
        super.init(frame: .zero)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private func setupViews() {
        let categoryImageView = UIImageView()
        let placeholderImage = UIImage(named: placeHolderImageName)
        categoryImageView.loadImageFromURL(url: categoryImageURL, with: placeholderImage)
        
        let titleLabel = UILabel(frame: .zero)
        titleLabel.text = categoryTitle
        
        categoryImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().offset(20)
            $0.height.width.equalTo(40)
        }
        
        titleLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalTo(categoryImageView).offset(20)
            $0.right.equalToSuperview().inset(20)
        }
    }
}
