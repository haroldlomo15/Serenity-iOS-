//
//  PhotoViewController.swift
//  Serenity
//
//  Created by Harold  on 2/29/16.
//  Copyright © 2016 Harold . All rights reserved.
//

import UIKit


class PhotoViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    let pictureArray = ["photo1", "photo2", "photo3", "photo4" ]
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: randomPictures())
        
    }
    override func viewDidAppear(animated: Bool) {
        navigationController?.hidesBarsWhenVerticallyCompact = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func addButton(sender: AnyObject) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(image, animated: true, completion: nil)
    
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let theInfo : NSDictionary =  info as NSDictionary
        let img:UIImage = theInfo.objectForKey(UIImagePickerControllerOriginalImage) as! UIImage
        imageView.image = img
        self.dismissViewControllerAnimated(true, completion: nil)

    }
    
    func randomPictures() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(pictureArray.count)))
        return pictureArray[randomNumber]
    }
    @IBAction func pictureButton(sender: AnyObject) {
        imageView.image = UIImage(named: randomPictures())

    }
    
}
