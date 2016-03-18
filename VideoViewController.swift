//
//  VideoViewController.swift
//  Serenity
//
//  Created by Harold  on 2/29/16.
//  Copyright © 2016 Harold . All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.hidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func video1Button(sender: AnyObject) {
        let fileURL:NSURL? = NSURL(string: "http://209.239.120.82/yt/1/99/tubidy_h264_19921.mp4")
        
        if let url = fileURL {
            self.playerView = AVPlayer(URL: url)
            self.playerViewController.player = self.playerView
        }
       
        //code below present viewcontroller to screen
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
            }
    }
    
    @IBAction func video2Button(sender: AnyObject) {
        let fileURL:NSURL? = NSURL(string: "http://85.25.73.142/yt/f/f7/the_most_relaxing_music_ever_slow_down_by_paul_collier_h264_66385.mp4")
        
        if let url = fileURL {
            self.playerView = AVPlayer(URL: url)
            self.playerViewController.player = self.playerView
        }
        
        //code below present viewcontroller to screen
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
        }

    }
    
    @IBAction func video3Button(sender: AnyObject) {
        let fileURL:NSURL? = NSURL(string: "http://188.138.81.37/yt/2/ba/tubidy_h264_20090.mp4")
        
        if let url = fileURL {
            self.playerView = AVPlayer(URL: url)
            self.playerViewController.player = self.playerView
        }
        
        //code below present viewcontroller to screen
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
        }

    }

    @IBAction func addButton(sender: AnyObject) {
        let image = UIImagePickerController()
        //image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(image, animated: true, completion: nil)

    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let theInfo : NSDictionary =  info as NSDictionary
        let img:UIImage = theInfo.objectForKey(UIImagePickerControllerOriginalImage) as! UIImage
        imageView.image = img
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
