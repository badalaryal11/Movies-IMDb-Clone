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
    
    func fetchMovie (movieTitle: String){
        let urlString = "\(movieURL)&q=\(movieTitle)"
        performRequest(with: urlString)
        
        
    }
    func performRequest(with urlString: String){
        // 1. Create a URL
        if let url = URL(string: urlString){
            // 2. Create a URL Session
            let session = URLSession(configuration: .default)
            // 3. Give Session a Task
            let task = session.dataTask(with: url) {(data,response,error) in
                
                if error != nil{
                    
                    self.delegate?.didFailWithError(error: error!)
                    return // exit out of this function
                }
                if let safeData = data{
                    if let movie = self.parseJSON(safeData){
                        
                        // let weatherVC = WeatherViewController()
                        // weatherVC.didUpdateWeather(weather: weather)
                        self.delegate?.didUpdateMovie(self, weather : movie)
                    }
                }
                // 4. Start the task
                task.resume()
                
            }
            
        }
    }
    
