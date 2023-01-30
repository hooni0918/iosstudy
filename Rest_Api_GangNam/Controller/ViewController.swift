//
//  ViewController.swift
//  Rest_Api_GangNam
//
//  Created by 이지훈 on 2023/01/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
   // var TodoArrays: [Todo] = []
    var TodoArrayTest : [String] = ["HomeWork1","HomeWork2","HomeWork3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    
    
    func setupTableView() {
        
        mainTableView.register(UINib(nibName: "HomeMainTableViewCell" , bundle: nil), forCellReuseIdentifier: "HomeMainTableViewCell")
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return TodoArrayTest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "HomeMainTableViewCell", for: indexPath) as! HomeMainTableViewCell
        
        
        cell.toDoName.text = TodoArrayTest[indexPath.row]
        return cell
    }
    
    
    
    
}

