//
//  SecondViewController.swift
//  Rest_Api_GangNam
//
//  Created by 이지훈 on 2023/01/28.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    let names: [String] = ["이미지 추가하기","제목을 입력하세요","내용을 입력하세요","priority", "Energy Costs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }
    
    
    
}
extension SecondViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.section]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
}
