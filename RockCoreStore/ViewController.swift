//
//  ViewController.swift
//  RockCoreStore
//
//  Created by Techmaster on 9/10/16.
//  Copyright © 2016 Techmaster Vietnam. All rights reserved.
//

import UIKit
import CoreStore
class ViewController: UIViewController {

    let dataStack = DataStack(modelName: "HumanResource")
    
    func configureStorage() {
        _ = dataStack.addStorage(
            SQLiteStore(
                fileName: "HumanResource3.sql",
               // configuration: "Default",
                localStorageOptions: .RecreateStoreOnModelMismatch)
            ,
            completion: { (result) in
                switch result {
                case .Success(let storage):
                    print("Successfully added sqlite store: \(storage)")
                    self.addSampleData()
                    self.getData()

                case .Failure(let error):
                    print("Failed adding sqlite store with error: \(error)")
                }
        })
        
        CoreStore.defaultStack = dataStack
        
    }
    
    func addSampleData() {
        dataStack.beginSynchronous { transaction in
            
            transaction.deleteAll(From(Person))
            
            let person1 = transaction.create(Into<Person>())
            person1.name = "Cuong"
            person1.gender = 1
            
            let person2 = transaction.create(Into<Person>())
            person2.name = "Khue"
            person2.gender = 0
            
            
            transaction.commitAndWait()
        }
    }
    
    func getData() {
        if let people = dataStack.fetchAll(From(Person)) {
            for aPerson in people {
                print("\(aPerson.name)")
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureStorage()
        //addSampleData()
        //getData()
        
    }



}

