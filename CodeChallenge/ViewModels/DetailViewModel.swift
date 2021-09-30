//
//  DetailViewModel.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 30/09/21.
//

import Foundation

class DetailViewModel {
    
    var concept = Concept(){
        didSet{
            bindViewController()
        }
    }
    
    var bindViewController = {}
}
