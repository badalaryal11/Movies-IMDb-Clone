//
//  MovieData.swift
//  Movies
//
//  Created by Badal  Aryal on 25/07/2023.
//

import Foundation
import UIKit
struct MovieData: Codable{
    let Title: String
    let Year: String
    let Director: String
    let Actors: String
    let Language: String
    let Runtime: String
    //let Poster: UIImage
}

struct Ratings:Codable{
    var source = "Internet Movie Database"
    let Value : Double
}

