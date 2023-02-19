//
//  ViewController.swift
//  wanted
//
//  Created by 한승재 on 2023/02/16.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var loadButton: UIButton = {
        let view = UIButton()
        view.addTarget(self, action: #selector(loadAllImage), for: .touchUpInside)
        view.backgroundColor = UIColor(red: 52/255, green: 120/255, blue: 246/255, alpha: 1.0)
        view.setTitle("Load All Images", for: .normal)
        return view
    }()
    
    private var imageDownloadView: UIView = {
        let view = UIView()
        return view
    }()
    
    private var imageDownloadWidget1: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://image.kmib.co.kr/online_image/2014/0707/201407071049_61170008483394_1.jpg")!)
        return view
    }()
    
    private var imageDownloadWidget2: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://w.namu.la/s/bb0f8f06d20ae8a773451bffdb569740df01b32f870e5b55b2217bd247b1e72fc346d151581b70e762571fc16920f1736ad69bcd93efe7ecbb860827e61af907e8197c5b6dbf6228bca55abf1f1f5d06036e3c1c5b9d8129b4bf4efc956a74e011bbb48467e0b530a6b4e0ac3ca6925e")!)
        return view
    }()
    
    private var imageDownloadWidget3: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://upload.wikimedia.org/wikipedia/ko/thumb/d/df/%ED%80%B8_-_The_Game.jpg/220px-%ED%80%B8_-_The_Game.jpg")!)
        return view
    }()
    
    private var imageDownloadWidget4: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://t4.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/5ZgB/image/BXzr02zGR1tdzVW4xJrw3IqSnIw.png")!)
        return view
    }()
    
    private var imageDownloadWidget5: ImageDownloadWidget = {
        let view = ImageDownloadWidget(url: URL(string: "https://i.discogs.com/vaWuT2cfnfzUdttip2Dj0oDNRA6gj85XxZvmT88AoLY/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4Mzc1/Mi0xNTk4OTMzODU0/LTE2NDIuanBlZw.jpeg")!)
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
            $0.height.equalTo(self.view.safeAreaLayoutGuide).multipliedBy(0.92)
        }
        
        self.loadButton.snp.makeConstraints {
            $0.leading.equalTo(self.view.safeAreaLayoutGuide).offset(24)
            $0.trailing.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
            $0.top.equalTo(self.imageDownloadView.snp.bottom)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide).offset(-24)
        }
    }
    
    private func setupImageDownloadView() {
        self.imageDownloadView.addSubviews(self.imageDownloadWidget1, self.imageDownloadWidget2, self.imageDownloadWidget3, self.imageDownloadWidget4, self.imageDownloadWidget5)
        self.imageDownloadWidget1.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalToSuperview()
        }
        self.imageDownloadWidget2.snp.makeConstraints {
            $0.top.equalTo(self.imageDownloadWidget1.snp.bottom).offset(24)
            $0.height.equalTo(80)
            $0.width.equalToSuperview()
        }
        self.imageDownloadWidget3.snp.makeConstraints {
            $0.top.equalTo(self.imageDownloadWidget2.snp.bottom).offset(24)
            $0.height.equalTo(80)
            $0.width.equalToSuperview()
        }
        self.imageDownloadWidget4.snp.makeConstraints {
            $0.top.equalTo(self.imageDownloadWidget3.snp.bottom).offset(24)
            $0.height.equalTo(80)
            $0.width.equalToSuperview()
        }
        self.imageDownloadWidget5.snp.makeConstraints {
            $0.top.equalTo(self.imageDownloadWidget4.snp.bottom).offset(24)
            $0.height.equalTo(80)
            $0.width.equalToSuperview()
        }
    }
    
    @objc func loadAllImage() {
        self.imageDownloadWidget1.loadImage()
        self.imageDownloadWidget2.loadImage()
        self.imageDownloadWidget3.loadImage()
        self.imageDownloadWidget4.loadImage()
        self.imageDownloadWidget5.loadImage()
    }
}

