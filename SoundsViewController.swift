//
//  SoundsViewController.swift
//  Serenity
//
//  Created by Harold  on 3/2/16.
//  Copyright © 2016 Harold . All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class SoundsViewController: UIViewController {
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func music1Button(sender: AnyObject) {
        let fileURL:NSURL? = NSURL(string: "http://188.138.74.107/yt/0/1a/beautiful_african_relaxation_music_with_nature_sounds_mp3_20887.mp3")
        
        if let url = fileURL {
            self.playerView = AVPlayer(URL: url)
            self.playerViewController.player = self.playerView
        }
        
        //code below present viewcontroller to screen
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
        }

    }
    

    @IBAction func music2Button(sender: AnyObject) {
        let fileURL:NSURL? = NSURL(string: "http://62.75.254.33/yt/d/de/smooth_jazz_the_calm_joshua_green_nu_jazz_lounge_music_fusion_chill_music_instrumental_mp3_20973.mp3")
        
        if let url = fileURL {
            self.playerView = AVPlayer(URL: url)
            self.playerViewController.player = self.playerView
        }
        
        //code below present viewcontroller to screen
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
        }

    }
    
    @IBAction func music3Button(sender: AnyObject) {
        let fileURL:NSURL? = NSURL(string: "http://173.224.120.214/yt/f/ff/relax_with_tranquil_sounds_of_nature_beautiful_music_by_bach_a_mother_duck_with_her_ducklings_mp3_20598.mp3")
        
        if let url = fileURL {
            self.playerView = AVPlayer(URL: url)
            self.playerViewController.player = self.playerView
        }
        
        //code below present viewcontroller to screen
        self.presentViewController(playerViewController, animated: true){
            self.playerViewController.player?.play()
        }

    }
}
