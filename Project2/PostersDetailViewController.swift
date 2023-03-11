//
//  DetailViewController.swift
//  Project2
//
//  Created by Tameem Ahmed on 3/5/23.
//

import UIKit
import Nuke

class PostersDetailViewController: UIViewController {

    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
        // Do any additional setup after loading the view.
        var movie : Movie!

        override func viewDidLoad() {
            super.viewDidLoad()
            let imageURL = URL(string: "https://image.tmdb.org/t/p/w500\(movie.backdrop_path ?? "")")!

            // TODO: Pt 1 - Configure the UI elements with the passed in track
            Nuke.loadImage(with: imageURL, into: movieImage)
            
            movieTitleLabel.text = movie.title
            popularityLabel.text = String(movie.popularity) + " Popularity"
            countLabel.text = String(movie.vote_count) + " Votes"
            voteLabel.text = String(movie.vote_average) + " Vote Average"
            overviewLabel.text = movie.overview

    }
    

}
