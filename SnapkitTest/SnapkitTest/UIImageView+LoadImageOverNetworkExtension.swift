//
//  UIImageView+LoadImageOverNetworkExtension.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 16/07/21.
//

import UIKit

extension UIImageView {
    func loadImageFromURL(url: URL?, with placeHolder: UIImage?) {
        self.image = placeHolder
        guard let url = url else {return}
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
