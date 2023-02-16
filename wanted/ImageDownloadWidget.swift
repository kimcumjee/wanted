//
//  ImageDownloadWidget.swift
//  wanted
//
//  Created by 한승재 on 2023/02/16.
//

import Foundation
import UIKit
import Kingfisher

class ImageDownloadWidget: UIView {
    private(set) var imageUrl: URL
    private var imageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    init(url: URL) {
        self.imageUrl = url
        super.init(frame: .zero)
        self.loadViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func loadViews() {
        self.addSubviews(imageView)
        self.imageView.kf.indicatorType = .activity
        self.imageView.kf.setImage(with: imageUrl)
        self.imageView.snp.makeConstraints {
            $0.leading.equalTo(self.safeAreaLayoutGuide)
            $0.trailing.equalTo(self.safeAreaLayoutGuide)
            $0.top.equalTo(self.safeAreaLayoutGuide)
            $0.height.greaterThanOrEqualTo(64)
        }
    }
    
}
