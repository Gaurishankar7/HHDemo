//
//  MusicListViewController.swift
//  DemoMusicHH
//
//  Created by Parvez Shaikh on 09/07/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit



class YourCellMusic: UICollectionViewCell{
    
    @IBOutlet weak var imgMusicC: UIImageView!
    
    @IBOutlet weak var lblNameMusic: UILabel!
    @IBOutlet weak var imgLock: UIImageView!
}



class MusicListViewController: UIViewController, UICollectionViewDataSource, UITabBarDelegate {
   

    @IBOutlet weak var collectionViewMusic: UICollectionView!
     @IBOutlet weak var tabBar: UITabBar!
    
     let reuseIdentifier = "YourCell"
    
    var artistImage = ["herbie.jpg","Music1.jpg","Music1.jpg","herbie.jpg","Music1.jpg","herbie.jpg"]
    var artistName = ["Headhunters","Maiden Voyage(1996)","Maiden Voyage(1996)","Headhunters","Headhunters","Maiden Voyage(1996)"]
    var lockImg = ["music-player.png","music-player.png","padlock.png", "padlock.png", "padlock.png", "padlock.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tabBar.delegate = self
        tabBar.selectedItem = tabBar.items![2]
        
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return artistImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell: YourCellMusic
        cell = collectionViewMusic.dequeueReusableCell(withReuseIdentifier: "YourCellMusic", for: indexPath) as! YourCellMusic
        
        if let label = cell.lblNameMusic{
            label.text = artistName[indexPath.row]
            cell.imgMusicC.image = UIImage(named: artistImage[indexPath.row])
            cell.imgLock.image = UIImage(named: lockImg[indexPath.row])
        }
        
        return cell
        
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
            let displayVC : ArtistProfileViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ArtistProfileViewController") as! ArtistProfileViewController
            self.present(displayVC, animated: true, completion: nil)
        }
        
        
    }
    

}
