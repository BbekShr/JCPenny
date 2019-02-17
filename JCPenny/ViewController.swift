//
//  ViewController.swift
//  JCPenny
//
//  Created by Bibek Shrestha on 2/16/19.
//  Copyright © 2019 Bibek Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let images: [UIImage] = [
        UIImage(named: "offer1")!,UIImage(named: "offer2")!,UIImage(named: "offer3")!,UIImage(named: "offer4")!,UIImage(named: "offer5")!]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let offercell = collectionView.dequeueReusableCell(withReuseIdentifier: "offers", for: indexPath) as! offerCell
        offercell.offerImageView.image = images[indexPath.item]
        
        return offercell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

          setupNavisgationItems()
        //
//        let label = UILabel()
//        label.text = "JCPenny"
//        label.textAlignment = .left
//        label.textColor = UIColor.white
//        UINavigationBar.title = label
        
    }
    
    private func setupNavisgationItems(){
    
        let titleText = "JCPenny"
        navigationItem.title = titleText

}

}
