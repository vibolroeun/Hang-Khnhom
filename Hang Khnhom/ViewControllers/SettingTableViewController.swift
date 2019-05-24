//
//  SettingTableViewController.swift
//  Hang Khnhom
//
//  Created by Vibol's Macbook Pro on 5/24/19.
//  Copyright © 2019 Vibol Roeun. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }


    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 40
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }
        
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }


}
