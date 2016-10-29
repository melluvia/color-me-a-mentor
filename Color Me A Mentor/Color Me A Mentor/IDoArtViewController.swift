//
//  IDoArtViewController.swift
//  Color Me A Mentor
//
//  Created by Priya Xavier on 10/28/16.
//  Copyright © 2016 Melissa Phillips Design. All rights reserved.
//

import UIKit

class IDoArtViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    struct Art {
        var pic: UIImage
        var title: String
    }
    
    var artFromLib: Art?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelBtn(_ sender: UIButton) {
     print("Cancel button is being pressed!")
        
    dismiss(animated: true, completion: nil)
   //     let isPresentingInAddArtMode = presentingViewController is UINavigationController
        
      //  if isPresentingInAddArtMode {
     //       print("dismiss")
      //      dismiss(animated: true, completion: nil)
    //    } else {
    //        navigationController!.popViewController(animated: true)
            print("pop")
    //    }
    }
    
   
    @IBOutlet weak var photoTitle: UITextField!
    @IBOutlet weak var photoImage: UIImageView!

    
    @IBAction func save(_ sender: UIButton) {
        
		artFromLib = Art(pic: photoImage.image!, title: photoTitle.text!)
		self.performSegue(withIdentifier: "unwindToArtList", sender: self)
        
    }
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSelectingImagePicker(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
 //       photoTitle.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        
        // Set photoImageView to display the selected image.
        photoImage.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
