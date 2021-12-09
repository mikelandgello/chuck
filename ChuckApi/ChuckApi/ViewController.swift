//
//  ViewController.swift
//  ChuckApi
//
//  Created by Dmitriy Piskunov on 9.12.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chuckSaid: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    
    @IBAction func reload(_ sender: UIButton) {
        
        let url = URL(string: "https://api.chucknorris.io/jokes/random")!
        
        let task = URLSession.shared.dataTask(with: url) {( data, response, error) in
            if let data = data,
                let weatherModel = try? JSONDecoder().decode(Welcome.self, from: data) {
                
                DispatchQueue.main.async { [weak self] in
                    self?.chuckSaid.text = "\(weatherModel.value)"
                   
        
        
    }
   

            }}
        task.resume()
        
        
    }
    
}

