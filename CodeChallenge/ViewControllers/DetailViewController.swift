//
//  DetailViewController.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import UIKit

class DetailViewController: UIViewController {

    var detailViewModel = DetailViewModel()
    
    
    @IBOutlet weak var exampleTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailViewModel.bindViewController = self.updateUI
        updateUI()
    }
    
    func updateUI(){
        
        exampleTextField.text = detailViewModel.concept.example
    }

}
