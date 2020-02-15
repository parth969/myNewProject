//
//  TableViewCell.swift
//  MoviePrediction
//
//  Created by Yogesh Patel on 12/02/20.
//  Copyright © 2020 yogesh patel. All rights reserved.
//

import UIKit
import CoreData
class TableViewCell: UITableViewCell {

    var UserData: [NSManagedObject] = []
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var likebtn: UIButton!
    
    @IBAction func likebttn(_ sender: UIButton) {
        likebtn.setImage(#imageLiteral(resourceName: "like"), for: .normal)
        liketag(tag: name.text!)
              UIButton.animate(withDuration: 0.1,animations:
                  {
                      sender.transform = CGAffineTransform(scaleX: 0.400, y: 0.40)
                      //(scaleX: 0.975, y: 0.96)
              },completion:
                  { finish in
                      
                      UIButton.animate(withDuration: 0.2, animations: {
                          sender.transform = CGAffineTransform.identity
                          //self.like.setImage(#imageLiteral(resourceName: "redHeart"), for: .normal)
                      })
              })
    }
    
    
    @IBAction func youtube(_ sender: Any) {
        let youtube = "https://youtube.com"
        let youtubeUrl = NSURL(string: youtube)
        if UIApplication.shared.canOpenURL(youtubeUrl! as URL)
                                   {
                                    UIApplication.shared.openURL(youtubeUrl! as URL)

                                    } else {
                                       //redirect to safari because the user doesn't have Instagram
                                    UIApplication.shared.openURL(NSURL(string: "https://youtube.com/")! as URL)
                                   }
       
    }
    
    @IBAction func bookmyshow(_ sender: Any) {
        let bookmyshow = "https://bookmyshow.com"
        let bookmyshowUrl = NSURL(string: bookmyshow)
        if UIApplication.shared.canOpenURL(bookmyshowUrl! as URL)
                                   {
                                    UIApplication.shared.openURL(bookmyshowUrl! as URL)

                                    } else {
                                       //redirect to safari because the user doesn't have Instagram
                                    UIApplication.shared.openURL(NSURL(string: "https://bookmyshow.com/")! as URL)
                                   }
    }
    
    @IBAction func paytm(_ sender: Any) {
        let paytm = "https://paytm.com"
        let paytmUrl = NSURL(string: paytm)
        if UIApplication.shared.canOpenURL(paytmUrl! as URL)
                            {
                             UIApplication.shared.openURL(paytmUrl! as URL)

                             } else {
                                //redirect to safari because the user doesn't have Instagram
                             UIApplication.shared.openURL(NSURL(string: "https://paytm.com/")! as URL)
                            }
    }
    
    func liketag(tag:String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        
        let managedContext =
               appDelegate.persistentContainer.viewContext
             
             // 2
             let entity =
               NSEntityDescription.entity(forEntityName: "Demo",
                                          in: managedContext)!
             
             let person = NSManagedObject(entity: entity,
                                          insertInto: managedContext)
             
             // 3
               person.setValue(name.text, forKeyPath: "name")
             
             
             // 4
             do {
               try managedContext.save()
               UserData.append(person)
              
             } catch let error as NSError {
               print("Could not save. \(error), \(error.userInfo)")
             }
           
           
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
