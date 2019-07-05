//
//  SelectArtistViewController.swift
//  DemoMusicHH
//
//  Created by Parvez Shaikh on 03/07/19.
//  Copyright © 2019 Parvez Shaikh. All rights reserved.
//

import UIKit

class YourCell: UICollectionViewCell {
//    @IBOutlet weak var lblName: UILabel!
//    @IBOutlet weak var imgArtist: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgArtist: UIImageView!    //checkMarkImage
    @IBOutlet weak var checkMarkImage: UIImageView!
    
    
    //Function  for select and deselect checkmark.
    
}

class SelectArtistViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionCiew: UICollectionView!
    
    
    
    
    let reuseIdentifier = "YourCell"
    var artistImage = ["HHSplash.jpg","Ariana.jpg","Ariana.jpg","HHSplash.jpg","HHSplash.jpg","Ariana.jpg"]
    var artistName = ["Herbie Hancock","Ariana Grande","Ariana Grande","Herbie Hancock","Herbie Hancock","Ariana Grande"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Register cell classes
//        self.collectionCiew!.register(YourCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//        self.collectionCiew!.register(YourCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
//        self.collectionCiew?.register(YourCell.self,
//                                           forCellWithReuseIdentifier: "cell")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return artistName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
      
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! YourCell

//        let cell = collectionCiew.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! YourCell
        
        var cell: YourCell
        cell = collectionCiew.dequeueReusableCell(withReuseIdentifier: "YourCell", for: indexPath) as! YourCell
//        cell.lblName.text = artistName[indexPath.row]
        if let label = cell.lblName{
//            label.text = "This is a title"
            label.text = artistName[indexPath.row]
            cell.imgArtist.image = UIImage(named: artistImage[indexPath.row])
        }
    
        cell.checkMarkImage.isHidden = true
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionCiew.dequeueReusableCell(withReuseIdentifier: "YourCell", for: indexPath) as! YourCell
        
        
        
//        if(cell.checkMarkImage.isHidden == true)
//        {
//            print("Hidden")
//            cell.checkMarkImage.isHidden = false
//
//        }
//        else
//        {
//            cell.checkMarkImage.isHidden = true
//            print("No Hidden")
//        }
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
