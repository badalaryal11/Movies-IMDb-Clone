//
//  MovieViewController.swift
//  Movies
//
//  Created by Badal  Aryal on 24/07/2023.
//

import UIKit

class MovieViewController: UIViewController {
    var data = [MovieModel]()
    
    @IBOutlet var MovieCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MovieCollectionView.reloadData()
        fetchMovie(URL: "https://www.omdbapi.com/?i=tt3896198&apikey=e5dcc291") {result in
            self.data = result
            DispatchQueue.main.async {
                self.MovieCollectionView.reloadData()
            }
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
// MARK: - UICollectionViewDataSource
extension MovieViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MovieCollectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! MovieCollectionViewCell
//        let apiData: MovieModel?
//        apiData = data[indexPath.row]
//        let string = "https://www.omdbapi.com" + (apiData!.Poster)
//        _ = URL(string: string)
//
        return cell
        
    }
}

//extension MovieViewController:UICollectionViewDelegateFlowLayout
//{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 200, height: 300)// determines the no of cells according to devices
//    }
    
//}
