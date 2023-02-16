//
//  UIView+Extension.swift
//  wanted
//
//  Created by 한승재 on 2023/02/16.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { view in
            self.addSubview(view)
        }
    }
}
