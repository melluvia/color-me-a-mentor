//
//  QuizEntryViewController.swift
//  Color Me A Mentor
//
//  Created by Melissa Phillips on 10/29/16.
//  Copyright © 2016 Melissa Phillips Design. All rights reserved.
//

import UIKit

class QuizEntryViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
//	@IBAction func finishQuiz(_ sender: UIButton) {
		@IBAction func cancel(_ sender: AnyObject) {
		
		// Load the second storyboard by name.
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		
		// Use the new storyboard to instantiate a certain UIViewController by name.
		let controller = storyboard.instantiateViewController(withIdentifier: "IamViewController") as UIViewController
		
		self.present(controller, animated: true, completion: nil)
		//
		//		self.navigationController?.pushViewController(controller, animated: true)
	}
}
