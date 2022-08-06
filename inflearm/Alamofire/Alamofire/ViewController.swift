//
//  ViewController.swift
//  Alamofire
//
//  Created by 이지훈 on 2022/08/06.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var textVIew: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func onBtnRequest(_ sender: UIButton) {
        sendRequest()
    }
    
    func sendRequest() {
        //POST방식
        let parameter : Parameters {
            "user_id" : "hong",
            "user_pw" : "1234"
        }
        let url: String = "http//nissisoft21.dothome.co.kr/login_test.php"
        
        
        Alamofire.request(url,
                          method: .post
                          parameters: parameter,
                          encoding: URLEncoding.httpBody,
                          headers: [ "Content-Type" : "application/x-www-form-urlencoded",
                                               "Accept" : "application/json"
                                              ]
                  ).validate(statusCode: 200..<300)
                  .responseJSON(completionHandler: {
                      (response) in
                      print( response )
                      
                      //JSON 결과값을 파싱해서 사용한다.
                      self.parseJSON( response )
                  })
                  
              }
                                    ]
        )
        
    }

}



