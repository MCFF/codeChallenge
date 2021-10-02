//
//  ConceptsViewController.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import UIKit

class ConceptsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var conceptsViewModel = ConceptsListsViewModel()
    
    
    @IBOutlet weak var conceptsList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        conceptsViewModel.bindViewController = {
            
            self.updateUI()
        }
        updateUI()
    }
    
    func updateUI(){
        
        conceptsList.reloadData()
    }
    
    //MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return conceptsViewModel.concepts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "conceptCell"){
            
            let title = cell.viewWithTag(1) as! UILabel
            title.text = conceptsViewModel.concepts[indexPath.row].title
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        proceed(indexPath: indexPath)
    }
    
    func proceed(indexPath: IndexPath){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(identifier: "detailVC") as! DetailViewController
        
        detailVC.detailViewModel.concept = self.conceptsViewModel.concepts[indexPath.row]
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}
