//
//  MovieManager.swift
//  Movies
//
//  Created by Badal  Aryal on 20/07/2023.
//

import Foundation
protocol MovieManagerDelegate{
    
    
}
struct MovieManager{
    let movieURL = "http://www.omdbapi.com/?i=tt9603212&apikey=e5dcc291"
    
    func fetchMovie {movieTitle: String){
        let urlString = "\(movieURL)&q=\(movieName)"
        
    }
        
    }
}
