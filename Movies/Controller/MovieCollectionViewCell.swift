//
//  MovieCollectionViewCell.swift
//  Movies
//
//  Created by Badal  Aryal on 20/07/2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var searchTextField:UITextField!
    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var ratingLabel:UILabel!
    @IBOutlet var yearLabel:UILabel!
    @IBOutlet var directorLabel:UILabel!
    @IBOutlet var languageLabel:UILabel!
    @IBOutlet var castLabel:UILabel!
    @IBOutlet var runtimeLabel:UILabel!
}

