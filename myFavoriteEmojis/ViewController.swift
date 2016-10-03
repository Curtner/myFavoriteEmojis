//
//  ViewController.swift
//  myFavoriteEmojis
//
//  Created by BHSRam2 on 10/3/16.
//  Copyright © 2016 BHSRam2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var coolTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        coolTableView.dataSource = self // Used to define the table
        coolTableView.delegate = self  // and contents
    }
        // Looking for the number of rows as an Integer
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return 100
        
    }
        // What we want in the cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // Assigns a value
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "Hello 😂"
            // control, command, space, brings up emojis
        return cell
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

