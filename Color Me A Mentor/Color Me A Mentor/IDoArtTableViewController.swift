//
//  ViewController.swift
//  Color Me A Mentor
//
//  Created by Priya Xavier on 10/28/16.
//  Copyright © 2016 Melissa Phillips Design. All rights reserved.
//

import UIKit

class IDoArtTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    struct Art {
        var pic: UIImage
        var title: String
    }
    var artlist = [Art]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
   func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return artlist.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "artCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ArtCell
        
        // Fetches the appropriate meal for the data source layout.
        let art = artlist[(indexPath as NSIndexPath).row]
        
    
        cell.artTitle.text = art.title
        cell.picThumbnail.image = art.pic
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToArtList(_ sender: UIStoryboardSegue) {
        
        if let sourceViewController = sender.source as? IDoArtViewController, let artFromIDo = sourceViewController.artFromLib{
            
            let artToBeAdded = Art(pic: artFromIDo.pic, title: artFromIDo.title)
                // Add a new meal.
            let newIndexPath = IndexPath(row: artlist.count, section: 0)
            artlist.append(artToBeAdded)
            tableView.insertRows(at: [newIndexPath], with: .bottom)
            }
            
        
        }
    

}
