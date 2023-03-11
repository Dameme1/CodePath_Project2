//
//  PostersViewController.swift
//  Project2
//
//  Created by Tameem Ahmed on 3/11/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    
    var posters: [Movie] = []
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

            // Use the indexPath.item to index into the albums array to get the corresponding album
            let poster = posters[indexPath.item]

            // Get the artwork image url
        let imageUrl = URL(string:"https://image.tmdb.org/t/p/w500\(poster.poster_path ?? "")")!

            // Set the image on the image view of the cell
            Nuke.loadImage(with: imageUrl, into: cell.PosterImageView)

            return cell
    }
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=689ab78fc49f39422ab9f18027370fa0")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            let decoder = JSONDecoder()
            do {
                // Try to parse the response into our custom model
                let response = try decoder.decode(MovieResponse.self, from: data)
                let posters = response.results
                print(posters)
                DispatchQueue.main.async {
                    self?.posters = posters
                    self?.collectionView.reloadData()
                }
            } catch {
                print(error.localizedDescription)
            }
        }

        // Initiate the network request
        task.resume()
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 0

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 0.5

        // Set this to however many columns you want to show in the collection.

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: 150, height: 220)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let cell = sender as! UICollectionViewCell
           // Get the index path of the cell from the table view
           let indexPath = collectionView.indexPath(for: cell)!
            let poster = posters[indexPath.item]
           // Get the detail view controller
           let detailViewController = segue.destination as! PostersDetailViewController

            // Use the index path to get the associated track

            // Set the track on the detail view controller
            detailViewController.movie = poster
        
    }
    
}
