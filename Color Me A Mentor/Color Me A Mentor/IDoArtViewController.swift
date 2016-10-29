//
//  IDoArtViewController.swift
//  Color Me A Mentor
//
//  Created by Priya Xavier on 10/28/16.
//  Copyright © 2016 Melissa Phillips Design. All rights reserved.
//

import UIKit

class IDoArtViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancelBtn(_ sender: UIButton) {
     print("Cancel button is being pressed!")
        // Depending on style of presentation (modal or push presentation), this view controller needs to be dismissed in two different ways.
    dismiss(animated: true, completion: nil)
   //     let isPresentingInAddArtMode = presentingViewController is UINavigationController
        
      //  if isPresentingInAddArtMode {
     //       print("dismiss")
            dismiss(animated: true, completion: nil)
    //    } else {
    //        navigationController!.popViewController(animated: true)
            print("pop")
    //    }
    }
    
   
    
    @IBAction func save(_ sender: UIButton) {
    }
    @IBOutlet weak var photoTitle: UITextField!
    @IBOutlet weak var photoImage: UIImageView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
