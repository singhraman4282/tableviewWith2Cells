//
//  ViewController.swift
//  dummyApp
//
//  Created by Raman Singh on 2018-08-31.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
   
    @IBOutlet var tableView: UITableView!
    
    var categoryList = ["general", "marriage", "love", "random", "life", "money"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell:TitleCell = tableView.dequeueReusableCell(withIdentifier: "titleCell", for: indexPath) as! TitleCell
            cell.titleLabel.text = "Category List"
            return cell
        }
        
        let cell:RegularCell = tableView.dequeueReusableCell(withIdentifier: "regularCell", for: indexPath) as! RegularCell
        cell.regularLabel.text = categoryList[indexPath.row - 1]
        return cell
        
    }
    
    
}





class TitleCell:UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    
}

class RegularCell:UITableViewCell {
    @IBOutlet var regularLabel: UILabel!
    
}

