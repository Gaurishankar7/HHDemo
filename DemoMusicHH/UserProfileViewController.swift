//
//  UserProfileViewController.swift
//  DemoMusicHH
//
//  Created by Parvez Shaikh on 11/07/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var tabBar: UITabBar!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.delegate = self
    }
    

    //MARK: UITabBarDelegate
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Selected item \(item.tag)")
        
        if(item.tag == 3){
            let displayVC : ArtistProfileViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ArtistProfileViewController") as! ArtistProfileViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 1){
            let displayVC : EventsUpViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EventsUpViewController") as! EventsUpViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 0){
            let displayVC : MediaEventsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MediaEventsViewController") as! MediaEventsViewController
            self.present(displayVC, animated: true, completion: nil)
        }else if(item.tag == 2){
            let displayVC : MusicListViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MusicListViewController") as! MusicListViewController
            self.present(displayVC, animated: true, completion: nil)
        }
        
        
    }

}
