//
//  LikePage.swift
//  MoviePrediction
//
//  Created by Yogesh Patel on 12/02/20.
//  Copyright © 2020 yogesh patel. All rights reserved.
//

import UIKit
import CoreData

class LikePage: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var managedContextObject:NSManagedObjectContext!
    //model data: table's row
    var managedObject:NSManagedObject!
    //list
    var list:[NSManagedObject]!
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
         cell.textLabel?.text = "\(self.list[indexPath.row].value(forKey: "name")!)"
        
        return cell
    }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
              
              tableView.deselectRow(at: indexPath, animated: true)
          }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle==UITableViewCell.EditingStyle.delete
        {
            let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            let context:NSManagedObjectContext = appDel.persistentContainer.viewContext
            context.delete(self.list[indexPath.row])
            
            do
            {
                try context.save()
                self.list.removeAll()
                self.listData()
                tableView.reloadData()
            }
            catch
            {
              print("error")
            }
            
        }
        else{
            print("Something wrong")
        }
             
    }
    
   
      
    

    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewWillAppear(true)
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
                     self.managedContextObject = appDel.persistentContainer.viewContext
                                          
                             listData()
          

        tableview.reloadData()
        // Do any additional setup after loading the view.
    }
    
           // Uncomment the following line to preserve selection between presentations
           // self.clearsSelectionOnViewWillAppear = false

           // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
           // self.navigationItem.rightBarButtonItem = self.editButtonItem
       
       
       override func viewWillAppear(_ animated: Bool) {
                 super.viewWillAppear(true)
                           
              listData()
        
            tableview.reloadData()
                
             }
          
          func listData(){
                     
                     
                     let fetchReq = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Demo")
                     
                     do{
                       self.list = try self.managedContextObject.fetch(fetchReq) as? [NSManagedObject]
                         for item in self.list{
                           
                         }
                     }
                     catch{
                         print("Error in fetch")
                     }
                     
                   tableview.reloadData()
                     
                 }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
