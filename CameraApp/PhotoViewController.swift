//
//  ViewController.swift
//  CameraApp
//
//  Created by user177578 on 2/8/21.
//

import UIKit
import SwiftyAvatar

class PhotoViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()

    @IBOutlet weak var avatar: SwiftyAvatar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true, completion: nil)
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        avatar.image = image
        picker.dismiss(animated: true, completion: nil)
        
    }

    @IBAction func chooseImage(_ sender: UIButton) {
        present(imagePicker, animated: true, completion: nil)
    }
}

