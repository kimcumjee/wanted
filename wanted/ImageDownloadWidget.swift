//
//  ImageDownloadWidget.swift
//  wanted
//
//  Created by 한승재 on 2023/02/16.
//

import Foundation
import UIKit
import Kingfisher

final class ImageDownloadWidget: UIView {
    private(set) var imageUrl: URL
    private var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Resources/placeholder.jpeg")
        return view
    }()
    
    private lazy var loadButton: UIButton = {
        let view = UIButton()
        view.addTarget(self, action: #selector(loadImage), for: .touchUpInside)
        view.backgroundColor = UIColor(red: 52/255, green: 120/255, blue: 246/255, alpha: 1.0)
        view.setTitle("Load", for: .normal)
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
        self.addSubviews(imageView, loadButton)
        self.imageView.snp.makeConstraints {
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(24)
            $0.top.equalTo(self.safeAreaLayoutGuide)
            $0.bottom.equalTo(self.safeAreaLayoutGuide)
            $0.width.equalTo(64)
        }
        
        self.loadButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-24)
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalTo(72)
        }
    }
    
    @objc func loadImage() {
        self.imageView.kf.setImage(with: imageUrl)
    }
    
}
