//
//  ViewController.swift
//  myFavoriteEmojis
//
//  Created by BHSRam2 on 10/4/16.
//  Copyright © 2016 BHSRam2. All rights reserved.
// Segue: A smooth transition
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var coolTableView: UITableView!
    
    var emoji = ["😓 Sad","🤕 Hurt","😳 Surprised","🙄 Rolling eyes","😽 Cat","👻 Ghost","💩 Poop"]
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        coolTableView.dataSource = self // Used to define the table
        coolTableView.delegate = self  // and contents
    }
        // Looking for the number of rows as an Integer
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return emoji.count
        
    }
        // What we want in the cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        
        
        
            // Assigns a value
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emoji[indexPath.row]
            // control, command, space, brings up emojis
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "🙂")
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// Navigation button, editor, embed in, navigation controller 
}

