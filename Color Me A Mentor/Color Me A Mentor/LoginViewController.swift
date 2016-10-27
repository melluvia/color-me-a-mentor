//
//  LoginViewController.swift
//  Color Me A Mentor
//
//  Created by Melissa Phillips on 10/27/16.
//  Copyright © 2016 Melissa Phillips Design. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	@IBOutlet weak var loginBtn: UIButton!
	@IBOutlet weak var segmentedControl: UISegmentedControl!

	@IBAction func btnTouched(_ sender: UIButton) {
		performSegue(withIdentifier: "goToMentorVC", sender: nil)
	}


	override func viewDidLoad() {
		super.viewDidLoad()
		
//		@IBAction func loginTouched(_ sender: AnyObject) {
//			func indexChanged(sender: UISegmentedControl) {
//				switch segmentedControl.selectedSegmentIndex {
//				case 0:
//					performSegue(withIdentifier: "goToMentorTab", sender: nil)
//				case 1:
//					performSegue(withIdentifier: "goToMenteeTab", sender: nil)
//				default:
//					break;
//				}
//			}
//		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()

	}
	
	
}

