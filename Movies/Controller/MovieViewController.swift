//  MovieViewController.swift
//  Movies
//
//  Created by Badal  Aryal on 24/07/2023.
//

import UIKit

class MovieViewController: UIViewController {
    
    
    
    
    
    @IBOutlet var MovieCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "IMdb"
        MovieCollectionView.reloadData()
        
    }
    
    
}



// MARK: - UICollectionViewDataSource
extension MovieViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MovieCollectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! MovieCollectionViewCell
        return cell
        
    }
}


