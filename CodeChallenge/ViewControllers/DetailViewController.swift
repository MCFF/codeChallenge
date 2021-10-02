//
//  DetailViewController.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import UIKit

class DetailViewController: UIViewController {

    var detailViewModel = DetailViewModel()
    
    
    @IBOutlet weak var titleTextField: UILabel!
    @IBOutlet weak var descriptionTextField: UILabel!
    @IBOutlet weak var exampleTextField: CustomUILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prepareUI()
        updateUI()
    }
    
    func prepareUI(){
        
        exampleTextField.padding(top: 5, left: 10, bottom: 5, right: 10)
        detailViewModel.bindViewController = self.updateUI
    }
    
    func updateUI(){
        
        
        titleTextField.text = detailViewModel.concept.title
        descriptionTextField.text = detailViewModel.concept.description
        exampleTextField.text = detailViewModel.concept.example
    }

}
