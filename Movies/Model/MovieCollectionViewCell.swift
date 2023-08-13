//
//  MovieCollectionViewCell.swift
//  Movies
//
//  Created by Badal  Aryal on 13/08/2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var searchTextBox: UITextField!
    
    @IBOutlet weak var movieImageView: UIImage!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var imdbRating: UILabel!
    
    @IBOutlet weak var yearLbl: UILabel!
    
    @IBOutlet weak var directorLbl: UILabel!
    
    @IBOutlet weak var languageLbl: UILabel!
 
    @IBOutlet weak var castLbl: UILabel!
    
    @IBOutlet weak var runtimeLbl: UILabel!
}
struct Movie{
    let movieTitle: String
    let movieImageView: UIImage
    let imdbRating: Int
    let yearLbl: Int
    let directorLbl: String
    let languageLbl: String
    let castLbl: String
    let runtimeLbl: String
    
}
