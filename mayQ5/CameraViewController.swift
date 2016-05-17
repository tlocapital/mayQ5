//
//  CameraViewController.swift
//  mayQ5
//
//  Created by Ted on 5/17/16.
//  Copyright © 2016 ted.company. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageHere: UIImageView!
    @IBOutlet weak var textHere: UITextField!
    @IBAction func retakeBut(sender: AnyObject) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .Camera
        imagePicker.delegate = self
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .Camera
        imagePicker.delegate = self
        self.presentViewController(imagePicker, animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print("info \(info)")
        let image = info["UIImagePickerControllerOriginalImage"]
        self.imageHere.image = image as? UIImage
        
        UIImageWriteToSavedPhotosAlbum(self.imageHere.image!, nil, nil, nil)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
//    override func viewDidDisappear(animated: Bool) {
//        let firstViewController = self.presentingViewController as! ViewController
//        firstViewController.currentTableCell += 1
//        let oldCell = firstViewController.thisTableView.dequeueReusableCellWithIdentifier("cellThis") as! TableViewCell
//        oldCell.cellImage.image = self.imageHere.image!
//        oldCell.cellLabel.text = self.textHere.text!
//    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
