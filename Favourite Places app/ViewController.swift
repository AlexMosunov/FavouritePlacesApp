//
//  ViewController.swift
//  Favourite Places app
//
//  Created by Alex Mosunov on 13.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let restaurants = ["restaurnat1","restaurnat2","restaurnat3",
                       "restaurnat4","restaurnat5","restaurnat6",
                       "restaurnat7","restaurnat8","restaurnat9",
                       "restaurnat10","restaurnat11","restaurnat12",
                       "restaurnat13","restaurnat14","restaurnat15",]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurants[indexPath.row]
        cell.imageView?.image = UIImage(named: "pollo-vegetales2")
        return cell
        
    }
    
    
}
