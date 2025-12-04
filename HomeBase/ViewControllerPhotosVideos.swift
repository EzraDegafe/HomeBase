//
//  ViewControllerPhotosVideos.swift
//  HomeBase
//
//  Created by Ezra Degafe on 12/3/25.
//

import UIKit

class ViewControllerPhotosVideos: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var collectViewPhotosVideos: UICollectionView!
    override func viewDidLoad() {
        
        collectViewPhotosVideos.delegate = self
        collectViewPhotosVideos.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MediaCell", for: indexPath)
            cell.backgroundColor = .lightGray // temporary placeholder
            return cell
    }
    


}
