//
//  QRReaderEvents.swift
//  QRAttendance
//
//  Created by Apple on 4/6/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit
import AVFoundation

extension QRReaderViewController : AVCaptureMetadataOutputObjectsDelegate {
    
    
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
    
    func captureQRCode(){
        
        guard let device = AVCaptureDevice.default(for: .video) else {
            handleNoVideoDeviceAvailable()
            return
        }
        
        do {
            let input = try AVCaptureDeviceInput(device: device)
            session.addInput(input)
        } catch {
            print("Error in input device or adding input to current session")
        }
        
        let output = AVCaptureMetadataOutput()
        session.addOutput(output)
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.global())
        output.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
        
        video = AVCaptureVideoPreviewLayer(session: session)
        
        video.frame = view.layer.bounds
        VideoFrame.layer.addSublayer(video)
        
        session.startRunning()
    }
    
    private func handleNoVideoDeviceAvailable(){
        let alert = UIAlertController(title: "Error", message: "No Camera Available" , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    }
    
}
