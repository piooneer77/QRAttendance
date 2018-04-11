//
//  QRReaderViewExtention.swift
//  QRAttendance
//
//  Created by Apple on 4/6/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

extension QRReaderViewController {
    
    func setViewConstraits(){
        addSubViewsInsideMainViews()
        setVideoFrameViewConstraints(subView: VideoFrame)
    }
    
    func addSubViewsInsideMainViews(){
        view.addSubview(VideoFrame)
    }
    
    private func setVideoFrameViewConstraints (subView: UIView){
        NSLayoutConstraint.activate([
            subView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            subView.heightAnchor.constraint(equalToConstant: 300),
            subView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
}
