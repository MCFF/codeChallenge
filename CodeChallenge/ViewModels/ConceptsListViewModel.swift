//
//  File.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import Foundation

class ConceptsListsViewModel{
    
    var concepts = [Concept](){
        didSet{
            
            bindViewController()
        }
    }
    var bindViewController = {}
    
    init() {
        
    }
    
}
