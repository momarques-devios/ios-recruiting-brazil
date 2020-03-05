//
//  HomeViewController.swift
//  TesteConcrete
//
//  Created by Mônica Marques on 04/03/20.
//  Copyright © 2020 Mônica Marques. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchMovies()
    }
    
    private func fetchMovies() {
        
        APIService().APIRequest(urlString: "https://api.themoviedb.org/3/movie/550", method: .get) { response in
            
            debugPrint(response)
            print(response)
            
            let decoder = JSONDecoder()

            do {
                let movie = try decoder.decode(Movie.self, from: response.value!)
                print("NOME DO FILME = \(movie.title)")
            } catch {
                print(error.localizedDescription)
            }
            
            
            
        }
        
        
        
        
        
        
        
    }
    
    
    
}
