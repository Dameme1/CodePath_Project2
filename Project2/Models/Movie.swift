//
//  Movie.swift
//  Project2
//
//  Created by Tameem Ahmed on 3/5/23.
//

import Foundation

struct Movie: Decodable{
    let title: String
    // let backdrop_path: URL
    let backdrop_path: String?
    let overview: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
    //let poster_path: URL
    let poster_path: String?
}

struct MovieResponse: Decodable{
    var results: [Movie]
}


//extension Movie{
//    static var mockMovies: [Movie] = [
//        Movie(
//            movieTitle: "Knock at the Cabin",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!,
//            movieOverview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
//            movieAverage: "6.6",
//            movieCount: "751",
//            moviePop: "4286.16"),
//        Movie(
//            movieTitle: "Puss in Boots: The Last Wish",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
//            movieOverview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
//            movieAverage: "8.4",
//            movieCount: "4235",
//            moviePop: "2820.651"),
//        Movie(
//            movieTitle: "Plane",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,
//            movieOverview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
//            movieAverage: "6.9",
//            movieCount: "754",
//            moviePop: "2200.205"),
//        Movie(
//            movieTitle: "Little Dixie",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!,
//            movieOverview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
//            movieAverage: "6.3",
//            movieCount: "44",
//            moviePop: "1698.096"),
//        Movie(
//            movieTitle: "Huesera",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg")!,
//            movieOverview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
//            movieAverage: "6.8",
//            movieCount: "57",
//            moviePop: "1511.332"),
//        Movie(
//            movieTitle: "M3GAN",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/dlrWhn0G3AtxYUx2D9P2bmzcsvF.jpg")!,
//            movieOverview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
//            movieAverage: "7.5",
//            movieCount: "1864",
//            moviePop: "1420.255"),
//        Movie(
//            movieTitle: "Shotgun Wedding",
//            backDropURL: URL(string: "https://image.tmdb.org/t/p/w500/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!,
//            movieOverview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
//            movieAverage: "6.4",
//            movieCount: "578",
//            moviePop: "1202.528")
//    ]
//}
