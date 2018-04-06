//
//  QRReaderViewController.swift
//  QRAttendance
//
//  Created by Apple on 3/22/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import AVFoundation

class QRReaderViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    var video = AVCaptureVideoPreviewLayer()
    var session : AVCaptureSession?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        captureQRCode()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        session?.stopRunning()
    }
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        if metadataObjects.count != 0 {
            if let object = metadataObjects[0] as? AVMetadataMachineReadableCodeObject {
                if object.type == AVMetadataObject.ObjectType.qr {
                    let alert = UIAlertController(title: "QR Code", message: object.stringValue , preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Retake", style: .default, handler: nil))
                    alert.addAction(UIAlertAction(title: "Copy", style: .default, handler: {(nil) in UIPasteboard.general.string = object.stringValue }))
                    present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    
    fileprivate func captureQRCode(){
        
        session = AVCaptureSession()
        
        let device = AVCaptureDevice.default(for: .video)
        
        do {
            let input = try AVCaptureDeviceInput(device: device!)
            session?.addInput(input)
        } catch {
            print("Error in input device or adding input to current session")
        }
        
        let output = AVCaptureMetadataOutput()
        session?.addOutput(output)
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.global())
        output.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
        
        video = AVCaptureVideoPreviewLayer(session: session!)
        video.frame = view.layer.bounds
        view.layer.addSublayer(video)
        
        session?.startRunning()
    }

}
