//
//  reviewtableviewcontroller.swift
//  Table Test
//
//  Created by cscoi054 on 2017. 1. 19..
//  Copyright © 2017년 a. All rights reserved.
//

import UIKit

typealias Building = (name:String, path:String)

class reviewtableviewcontroller: UITableViewController {
    
    let buildings = [Building(name:"다음에 또 걷고싶네요", path:"뚝섬유원지-도산공원"),Building(name:"간단하게 걸어요!!", path:"성북천-성북천"),Building(name:"어제 너무 좋았어요", path:"북서울꿈에숲-성북천-정릉"),Building(name:"연인과 걸어보고싶은 길", path:"청계천-남산타워")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return buildings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Buildingcell", for: indexPath)

        // Configure the cell...
        
        let buildingName = buildings[indexPath.row]
        cell.textLabel?.text = buildingName.name
        cell.detailTextLabel?.text = buildingName.path
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        // 목적지
        let destVC = segue.destination as! ViewController

        
        let selectedIndex = self.tableView.indexPathForSelectedRow?.row
        let selected = buildings[selectedIndex!]
        destVC.selectedBuilding = selected
    // destVC = 목적지인 뷰컨트롤러를 받는 이름 -> 즉 뷰컨트롤러의 selectedBuilding에 넣어라.
    // MARK: - Segues
}
    
