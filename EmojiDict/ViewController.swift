//
//  ViewController.swift
//  EmojiDict
//
//  Created by Charest,Julien on 1/26/18.
//  Copyright © 2018 MeowMoewFuzzyFace. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var EmojiMainTable: UITableView!
    
    var emojisarr = ["🤪","😘","🤬","🐌","🙃","🍑","⬆️","🗿"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EmojiMainTable.dataSource = self
        EmojiMainTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisarr.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojisarr[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

