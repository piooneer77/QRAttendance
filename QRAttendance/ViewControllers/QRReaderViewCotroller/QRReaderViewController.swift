//
//  QRReaderViewController.swift
//  QRAttendance
//
//  Created by Apple on 3/22/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import AVFoundation

class QRReaderViewController: UIViewController {
    
    var video = AVCaptureVideoPreviewLayer()
    var session = AVCaptureSession()

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewConstraits()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        captureQRCode()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        session.stopRunning()
    }
    
    let VideoFrame : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
}
