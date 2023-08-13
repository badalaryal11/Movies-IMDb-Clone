//
//  MovieManager.swift
//  Movies
//
//  Created by Badal  Aryal on 25/07/2023.
//

import Foundation




protocol WeatherManagerDelegate{
    func didUpdateMovie(_ movieManager: MovieManager, movie: MovieCollectionViewCell)
    func didFailWithError(error: Error)
}

struct MovieManager{
    let movieURL =  "http://www.omdbapi.com/apikey=e5dcc291"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(movieTitle:String){
        let urlString = "\(movieURL)&t=\(movieTitle)"
        performRequest(with: urlString)
    }
    
    
    func performRequest(with urlString: String){
        // 1. create a URL
        if let url = URL(string: urlString){ // here url string is a input to the URL method
            
            
            // 2.Create a url session
            let session = URLSession(configuration: .default)
            
            //3.Give a session a task
            let task = session.dataTask(with: url) {(data,response,error) in
                
                if error != nil{
                   
                    self.delegate?.didFailWithError(error: error!)
                    return // exit out of this function
                }
                if let safeData = data{
                    if let movie = self.parseJSON(safeData){
                        
                      
                        self.delegate?.didUpdateMovie(self, movie : movie)
                    }
                    
                    
                    
                }
                
            }
            
            // 4. Start the task
            task.resume()
        }
    }
    func parseJSON (_ movieData: Data) -> MovieCollectionViewCell?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(MovieData.self,from: movieData)
            let movie = MovieCollectionViewCell( MovieData(Title: "", Year: "", Director: "", Actors: "", Language: "", Runtime: ""))
            return movie
        } catch{
            delegate?.didFailWithError(error: error)
            return nil
            
        }
        
        
        
        
    }
}

