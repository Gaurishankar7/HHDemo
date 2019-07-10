//
//  ArtistProfileViewController.swift
//  DemoMusicHH
//
//  Created by Parvez Shaikh on 08/07/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class ArtistProfileViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.delegate = self
        tabBar.selectedItem = tabBar.items![3]
    }
    
    //MARK: UITabBarDelegate
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Selected item \(item.tag)")
        
        if(item.tag == 0){
            let displayVC : MediaEventsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MediaEventsViewController") as! MediaEventsViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 2){
            let displayVC : MusicListViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MusicListViewController") as! MusicListViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 1){
            let displayVC : EventsUpViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EventsUpViewController") as! EventsUpViewController
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
