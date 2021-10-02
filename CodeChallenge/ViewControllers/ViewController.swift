//
//  ViewController.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let categoriesViewModel = CategoriesListViewModel()
    
    @IBOutlet weak var categoriesList: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButton
        
        categoriesViewModel.bindViewController = {
            self.updateUI()
        }
    }
    
    private func updateUI(){
        
        categoriesList.reloadData()
    }

    //MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categoriesViewModel.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell"){
            
            let question = cell.viewWithTag(1) as! UILabel
            
            question.text = categoriesViewModel.categories[indexPath.row].name
                
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoriesList.deselectRow(at: indexPath, animated: true)
        
        proceed(indexPath: indexPath)
    }
    
    func proceed(indexPath: IndexPath){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let conceptsVC = storyboard.instantiateViewController(identifier: "conceptsVC") as! ConceptsViewController
        
        conceptsVC.conceptsViewModel.concepts = categoriesViewModel.categories[indexPath.row].concepts
        
        self.navigationController?.pushViewController(conceptsVC, animated: true)
    }

}

