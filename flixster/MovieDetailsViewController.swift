//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by SindhuRam on 9/7/20.
//  Copyright © 2020 SindhuRam. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var brackDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie["title"])
        titlelabel.text = movie["title"] as? String
        titlelabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl+posterPath)!
        posterView.af_setImage(withURL: posterUrl)
        // Do any additional setup after loading the view.
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        brackDropView.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
