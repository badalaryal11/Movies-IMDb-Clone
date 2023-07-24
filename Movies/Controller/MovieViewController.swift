//
//  MovieViewController.swift
//  Movies
//
//  Created by Badal  Aryal on 24/07/2023.
//

import UIKit

class MovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMovie(URL: "https://www.omdbapi.com/?i=tt3896198&apikey=e5dcc291") {result in
            print(result)
        }
        
    }
    func fetchMovie(URL Url: String, completion: @escaping ([MovieModel]) -> Void)
    {
        guard let url = URL (string: Url) else { return  }
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url) {data,response,error in
            do{
                let fetchMovie = try JSONDecoder().decode([MovieModel].self, from: data!)
                completion(fetchMovie)
            } catch{
                print("Parsing Error")
                
            }
            
        }
        dataTask.resume()
        
        
        
    }

}
