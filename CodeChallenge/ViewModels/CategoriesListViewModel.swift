//
//  QuestionsListViewModel.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import Foundation

class CategoriesListViewModel{
    
    var categories = [Category](){
        didSet{
            bindViewController()
        }
    }
    var bindViewController = {}
    
    
    init() {
        
        let downloader = Downloader()
        let data = downloader.downloadData()
        
        categories = try! JSONDecoder().decode([Category].self, from: data)
    }
    
}
