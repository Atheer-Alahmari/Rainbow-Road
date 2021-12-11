//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Atheer Alahmari on 07/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table_View: UITableView!
    var colors :[UIColor]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colors = [UIColor.red ,UIColor.orange , UIColor.yellow , UIColor.systemGreen ,UIColor.blue ,UIColor.purple]
        table_View.dataSource = self // important thing
        table_View.rowHeight = 120
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_Cell", for: indexPath)
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    
}




