//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by John Holowesko on 11/13/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple),]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    // these are our 2 required data source methods. Must haves!
    // How many rows in the tableview?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    // What data is in each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name

        return cell
    }
    

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowColorSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let colorDetailVC = segue.destination as? ColorDetailViewController else { return }
            
            let cellColor = colors[indexPath.row]
            
            colorDetailVC.cellColor = cellColor
        }
    }
}
