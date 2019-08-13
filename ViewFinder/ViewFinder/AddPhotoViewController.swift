//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Emmy on 8/13/19.
//  Copyright © 2019 Emmy. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var displayImage: UIImageView!
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //Update out photo with the selected photo
        //go to back our ViewCOntroller so the user can see the update
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            displayImage.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }

}
