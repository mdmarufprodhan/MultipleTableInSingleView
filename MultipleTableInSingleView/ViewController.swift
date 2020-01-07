//
//  ViewController.swift
//  MultipleTableInSingleView
//
//  Created by Md Maruf Prodhan on 1/6/20.
//  Copyright © 2020 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    var item = [String]()
    
    var cellIdentifier : String = "cell"
    
    var numberOfRows : Int = 0
   
    
        var myDictionary = ["A":["Apple", "Ant"],
                    "B":["Mango", "Tree"],
                    "C":["Banna", "Testy"],
                    "D":["Grapes", "Awsam"],
                    "E":["Pineapple", "Its great"]]
                    
        
        
        
        
        
        
     override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.{
        table1.delegate = self
        table1.dataSource = self
        
        table2.delegate = self
        table2.dataSource = self

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1{
          //  print("Number of Rows")
           // print(Data)
            numberOfRows = myDictionary.count
            print(numberOfRows)
            return numberOfRows
        }
            
        if tableView.tag == 2{
            //  print("Number of Rows")
            // print(Data)
            
          //numberOfRows = item.count
            numberOfRows = item.count
            
            return numberOfRows
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath)
        if tableView.tag == 1{
            cell.textLabel?.text = Array(myDictionary.keys)[indexPath.row]
        }
        
        else if tableView.tag == 2{
         cell.textLabel?.text = item[indexPath.row]
        }
        return cell
        
    }
    
    //Action click
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        if tableView.tag == 1{
            print(Array(myDictionary.values)[indexPath.row])
            
            item = Array(myDictionary.values)[indexPath.row]
        }
        
        table2.reloadData()
    }
    

    }


