//
//  MovieManager.swift
//  Movies
//
//  Created by Badal  Aryal on 25/07/2023.
//

import Foundation




protocol MovieManagerDelegate{
    func didUpdateMovie(_ movieManager: MovieManager, movie: MovieCollectionViewCell)
    func didFailWithError(error: Error)
}

struct MovieManager{
    let movieURL =  "http://www.omdbapi.com/apikey=e5dcc291"
    
    var delegate: MovieManagerDelegate?
    
    func fetchMovie(movieTitle:String){
        let urlString = "\(movieURL)&t=\(movieTitle)"
        performRequest(with: urlString)
    }
    
   
