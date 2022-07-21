//
//  ViewController.swift
//  firestore
//
//  Created by 이지훈 on 2022/07/16.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteTextfield: UITextField!
    @IBOutlet weak var authorTextfield: UITextField!
    
    let db = Firestore.firestore()
    var docRef: DocumentReference!
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let quoteText = quoteTextfield.text, !quoteText.isEmpty else { return }
        guard let quoteAuthor = authorTextfield.text, !quoteAuthor.isEmpty else { return }
        
    
        let dataToSave: [String: Any] = ["quote": quoteText, "author": quoteAuthor]
        
        docRef.setData(dataToSave) { (error) in
            if let error = error {
                print("error: \(error.localizedDescription)")
            }else{
                print("save!")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("sampleData/inspiration")
    }
}

