//
//  DetailViewController.swift
//  Project2
//
//  Created by Tameem Ahmed on 3/5/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

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

            // TODO: Pt 1 - Configure the UI elements with the passed in track
            Nuke.loadImage(with: movie.backDropURL, into: movieImage)
            
            movieTitleLabel.text = movie.movieTitle
            popularityLabel.text = movie.moviePop + " Popularity"
            countLabel.text = movie.movieCount + " Votes"
            voteLabel.text = movie.movieAverage + " Vote Average"
            overviewLabel.text = movie.movieOverview

    }
    

}
