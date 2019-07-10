//
//  EventsUpViewController.swift
//  DemoMusicHH
//
//  Created by Parvez Shaikh on 09/07/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class EventsUpViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITabBarDelegate {
    
    @IBOutlet weak var tableViewEvent: UITableView!
    @IBOutlet weak var tabBar: UITabBar!
    
     private let cellReuseIdentifier: String = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        tableViewEvent.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tabBar.delegate = self
        tabBar.selectedItem = tabBar.items![1]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "cell")
        
        let imgEvent = UIImageView(frame: CGRect(x: 5, y: 3, width: 120, height: 120) )
        imgEvent.image = UIImage(named: "90-og.jpg")
        cell.addSubview(imgEvent)
        
        let lblEvent = UILabel(frame: CGRect(x: 130, y: 17, width: 220, height: 30))
        lblEvent.text = "THE BEACON THEATRE"
        lblEvent.font = lblEvent.font.withSize(18)
        cell.addSubview(lblEvent)
        
        let lblEventPlace = UILabel(frame: CGRect(x: 130, y: 58, width: 220, height: 30))
        lblEventPlace.text = "New York"
        lblEventPlace.font = lblEvent.font.withSize(15)
        cell.addSubview(lblEventPlace)
        
        let lblEventDate = UILabel(frame: CGRect(x: 130, y: 96, width: 220, height: 30))
        lblEventDate.text = "1-Aug"
        lblEventDate.font = lblEvent.font.withSize(15)
        cell.addSubview(lblEventDate)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 130.0;//Choose your custom row height
    }
    
    //MARK: UITabBarDelegate
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Selected item \(item.tag)")
        
        if(item.tag == 3){
            let displayVC : ArtistProfileViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ArtistProfileViewController") as! ArtistProfileViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 2){
            let displayVC : MusicListViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MusicListViewController") as! MusicListViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 0){
            let displayVC : MediaEventsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MediaEventsViewController") as! MediaEventsViewController
            self.present(displayVC, animated: true, completion: nil)
        }
        
        
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
