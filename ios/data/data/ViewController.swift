//
//  ViewController.swift
//  data
//
//  Created by 이지훈 on 2022/07/20.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseFirestore


class ViewController: UIViewController {

    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func name(_ sender: Any) {
        let db = Firestore.firestore()
         var ref: DocumentReference? = nil
         ref = db.collection("users").addDocument(data: [
             "first": "Ada",
             "last": "Lovelace",
             "born": 1815
         ]) { err in
             if let err = err {
                 print("Error adding document: \(err)")
             } else {
                 print("Document added with ID: \(ref!.documentID)")
             }
         }
         // Add a second document with a generated ID.
         ref = db.collection("users").addDocument(data: [
             "first": "Alan",
             "middle": "Mathison",
             "last": "Turing",
             "born": 1912
         ]) { err in
             if let err = err {
                 print("Error adding document: \(err)")
             } else {
                 print("Document added with ID: \(ref!.documentID)")
             }
         }
         db.collection("users").getDocuments() { (querySnapshot, err) in
             if let err = err {
                 print("Error getting documents: \(err)")
             } else {
                 for document in querySnapshot!.documents {
                     print("\(document.documentID) => \(document.data())")
                 }
             }
         }
         }
         
    
    //cities 정보
    @IBAction func send(_ sender: Any) {
        let citiesRef = db.collection("cities")

        citiesRef.document("SF").setData([
            "name": "San Francisco",
            "state": "CA",
            "country": "USA",
            "capital": false,
            "population": 860000,
            "regions": ["west_coast", "norcal"]
            ])
        citiesRef.document("LA").setData([
            "name": "Los Angeles",
            "state": "CA",
            "country": "USA",
            "capital": false,
            "population": 3900000,
            "regions": ["west_coast", "socal"]
            ])
        citiesRef.document("DC").setData([
            "name": "Washington D.C.",
            "country": "USA",
            "capital": true,
            "population": 680000,
            "regions": ["east_coast"]
            ])
        citiesRef.document("TOK").setData([
            "name": "Tokyo",
            "country": "Japan",
            "capital": true,
            "population": 9000000,
            "regions": ["kanto", "honshu"]
            ])
        citiesRef.document("BJ").setData([
            "name": "Beijing",
            "country": "China",
            "capital": true,
            "population": 21500000,
            "regions": ["jingjinji", "hebei"]
            ])
    }
    
    @IBAction func SENT(_ sender: Any) {
        let docRef = db.collection("cities").document("SF")

        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                print("Document data: \(dataDescription)")
            } else {
                print("Document does not exist")
            }
        }
}



}

