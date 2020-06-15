//
//  Info.swift
//  MoviePrediction
//
//  Created by Yogesh Patel on 12/02/20.
//  Copyright © 2020 yogesh patel. All rights reserved.
//

import UIKit

class Info: ViewController,UITableViewDataSource,UITableViewDelegate {
    
//    var arr = [["Image":#imageLiteral(resourceName: "220px-Shubh_Mangal_Zyada_Saavdhan_poster"),"Name":"Shubh Mangal Zyada Savdhaan","Description":"Ayushman Khurrana,Jitendra Kumar,Gujraj Rao,Neena Gupta"],
//           ["Image":#imageLiteral(resourceName: "IMG_6251"),"Name":"The Story of Gunjan Saxena","Description":"Janhvi Kapur,Pankaj Tripathi,Angad Bedi,veenit Kumar Singh,Manav Vij"],
//           ["Image":#imageLiteral(resourceName: "220px-Angrezi_Medium_film_poster"),"Name":"Angrezi Medium","Description":"Irrfan Khan,Radhika Madan,Karina Kapoor"],
//           ["Image":#imageLiteral(resourceName: "rooh-afza-et00099813-29-03-2019-01-55-30"),"Name":"Rooh Afza","Description":"Janhvi Kapoor,Rajkummar Rao,Varun Sharma"],
//           ["Image":#imageLiteral(resourceName: "images"),"Name":"’83","Description":"Ranveer singh,Deepika Padukone,Tahir Raj Bhasin,Saqib Saleem,Jiva,Harrdy Sandhu"],
//           ["Image":#imageLiteral(resourceName: "220px-Coolie_No._1_poster"),"Name":"Coolie No. 1","Description":"Varun Dhavan,Sara Ali Khan"],
//           ["Image":#imageLiteral(resourceName: "MV5BOWMwMTViMmQtNjUzMy00MWQzLWIxN2UtZDAwN2Q5OGQ2NWIyXkEyXkFqcGdeQXVyNjQxNDg4OTM@._V1_"),"Name":"Khaali Peeli","Description":"Ishaan Khatter, Ananya Panday"],
//           ["Image":#imageLiteral(resourceName: "sadak-2-et00072278-10-03-2018-03-43-47"),"Name":"Sadak 2","Description":"Alia Bhatt, Aditya Roy Kapur, Sanjay Dutt and Pooja Bhatt"]
//
//
//       ]
//
    var aray = [["Image":#imageLiteral(resourceName: "220px-Shubh_Mangal_Zyada_Saavdhan_poster"),"Name":"Shubh Mangal Zyada Savdhaan","Description":"Ayushman Khurrana,Jitendra Kumar,Gujraj Rao,Neena Gupta"],
                ["Image":#imageLiteral(resourceName: "Janhvi Kapoor- Gunjan Saxena The Kargil Girl"),"Name":"The Story of Gunjan Saxena","Description":"Janhvi Kapur,Pankaj Tripathi,Angad Bedi,veenit Kumar Singh,Manav Vij"],
                ["Image":#imageLiteral(resourceName: "220px-Angrezi_Medium_film_poster"),"Name":"Angrezi Medium","Description":"Irrfan Khan,Radhika Madan,Karina Kapoor"],
                 ["Image":#imageLiteral(resourceName: "rooh-afza-et00099813-29-03-2019-01-55-30"),"Name":"Rooh Afza","Description":"Janhvi Kapoor,Rajkummar Rao,Varun Sharma"],
                 ["Image":#imageLiteral(resourceName: "images"),"Name":"’83","Description":"Ranveer singh,Deepika Padukone,Tahir Raj Bhasin,Saqib Saleem,Jiva,Harrdy Sandhu"],
                  ["Image":#imageLiteral(resourceName: "220px-Coolie_No._1_poster"),"Name":"Coolie No. 1","Description":"Varun Dhavan,Sara Ali Khan"],
                   ["Image":#imageLiteral(resourceName: "MV5BOWMwMTViMmQtNjUzMy00MWQzLWIxN2UtZDAwN2Q5OGQ2NWIyXkEyXkFqcGdeQXVyNjQxNDg4OTM@._V1_"),"Name":"Khaali Peeli","Description":"Ishaan Khatter, Ananya Panday"],
                   ["Image":#imageLiteral(resourceName: "sadak-2-et00072278-10-03-2018-03-43-47"),"Name":"Sadak 2","Description":"Alia Bhatt, Aditya Roy Kapur, Sanjay Dutt and Pooja Bhatt"],
                   
                
    ]
    
      

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
              return 1
          }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aray.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!  TableViewCell
                 
        cell.img.image = self.aray[indexPath.row]["Image"] as? UIImage
        cell.name.text = self.aray[indexPath.row]["Name"] as? String
        cell.detail.text = self.aray[indexPath.row]["Description"] as? String
                 
                 cell.layer.cornerRadius = 10.0
                 cell.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
                        cell.layer.borderWidth = 0.5
                 
                 return cell
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
