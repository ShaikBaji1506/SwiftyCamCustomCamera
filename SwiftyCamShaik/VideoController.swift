//
//  ViewController.swift
//  SwiftyCamShaik
//
//  Created by Shaik Baji on 27/02/19.
//  Copyright © 2019 smartitventures.com. All rights reserved.
//

import UIKit
import SwiftyCam

class VideoController:SwiftyCamViewController,SwiftyCamViewControllerDelegate
{
@IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        cameraDelegate = self
        self.recordButton.setTitle("Record", for:.normal)
    }
    
    @IBAction func recordBtnTapped(_ sender: UIButton)
    {
        
        if(self.recordButton.titleLabel?.text == "Record")
        {
            startVideoRecording()
            self.recordButton.setTitle("Stop", for:.normal)
        }
        else
        {
            stopVideoRecording()
            self.recordButton.setTitle("Record", for:.normal)
        }
       }
    
    func swiftyCamSessionDidStartRunning(_ swiftyCam: SwiftyCamViewController)
    {
        print("Session did start running")
        //captureButton.buttonEnabled = true
    }
    
    func swiftyCamSessionDidStopRunning(_ swiftyCam: SwiftyCamViewController)
    {
        print("Session did stop running")
        //captureButton.buttonEnabled = false
    }
    
    
    
    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didBeginRecordingVideo camera: SwiftyCamViewController.CameraSelection)
    {
        print("Did Begin Recording")
        //captureButton.growButton()
        //hideButtons()
    }
    
    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didFinishRecordingVideo camera: SwiftyCamViewController.CameraSelection)
    {
        print("Did finish Recording")
        //captureButton.shrinkButton()
        //showButtons()
    }

    
    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didFinishProcessVideoAt url: URL)
    {
        print("The URl == \(url)")
        //let newVC = VideoViewController(videoURL: url)
        //self.present(newVC, animated: true, completion: nil)
    }
    
    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didFocusAtPoint point: CGPoint)
    {
        // Called when a user initiates a tap gesture on the preview layer
        // Will only be called if tapToFocus = true
        // Returns a CGPoint of the tap location on the preview layer
    }
    
    func swiftyCam(_ swiftyCam: SwiftyCamViewController, didChangeZoomLevel zoom: CGFloat)
    {
        // Called when a user initiates a pinch gesture on the preview layer
        // Will only be called if pinchToZoomn = true
        // Returns a CGFloat of the current zoom level
    }

}

