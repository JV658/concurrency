//
//  ViewController.swift
//  concurrency
//
//  Created by Cambrian on 2023-05-10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pokeName: UITextField!
    
    @IBAction func printPokeData(_ sender: Any) {
        Task {
            print(await PokeAPI_Helper.fetch(pokemon: pokeName.text!))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


