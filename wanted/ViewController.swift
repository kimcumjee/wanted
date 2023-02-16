//
//  ViewController.swift
//  wanted
//
//  Created by 한승재 on 2023/02/16.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var loadButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = UIColor(red: 52/255, green: 120/255, blue: 246/255, alpha: 1.0)
        view.setTitle("Load", for: .normal)
        return view
    }()
    
    private var imageDownloadView: UIView = {
        let view = UIView()
        return view
    }()
    
    private var imageDownloadWidget1: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843__480.png")!)
        return view
    }()
    
    private var imageDownloadWidget2: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843__480.png")!)
        return view
    }()
    
    private var imageDownloadWidget3: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843__480.png")!)
        return view
    }()
    
    private var imageDownloadWidget4: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843__480.png")!)
        return view
    }()
    
    private var imageDownloadWidget5: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843__480.png")!)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
    }
    
    private func setupViews() {
        self.view.addSubviews(self.loadButton, self.imageDownloadView)
        self.setupImageDownloadView()
        self.imageDownloadView.snp.makeConstraints {
            $0.leading.equalTo(self.view.safeAreaLayoutGuide)
            $0.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.greaterThanOrEqualTo(self.view.safeAreaLayoutGuide)
        }
        
        self.loadButton.snp.makeConstraints {
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            $0.trailing.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
            $0.height.greaterThanOrEqualTo(48)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
    }
    
    private func setupImageDownloadView() {
        self.imageDownloadView.addSubviews(self.imageDownloadWidget1, self.imageDownloadWidget2, self.imageDownloadWidget3, self.imageDownloadWidget4, self.imageDownloadWidget5)
    }
}
