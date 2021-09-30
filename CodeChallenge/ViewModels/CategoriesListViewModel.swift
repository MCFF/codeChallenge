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
        
        let accessModifiers = """
            En Swift existen 5 modificadores de acceso:
            
            - Private
            - Internal
            - File-private
            - Public
            - Open
            """
        
        let example = """
            
            class Pajaro{
            
                private var nombre = "Pajarito"
                private var tipo = "Codorniz"
            }
            
            """
        
        let codeReviewConcept = Concept(question: "¿Qué es y para qué utilizar el code review?", answer: "El code review es una técnica en la cuál uno o más programadores revisan el código fuente en busca de errores con el fin de mejorar la calidad y reducir los fallos.")
        let accessControlConcept = Concept(question: "¿Cuáles son los niveles de acceso y cómo funcionan?", answer: accessModifiers, example: example)
        let architectureDesignConcept = Concept(question: "¿Qué patrones de arquitectura conoces y cómo funcionan?", answer: "")
        let designPatternConcept = Concept(question: "¿Qué patrones de diseño conoces y cómo funcionan?", answer: "")
        let solidConcept = Concept(question: "¿Qué es SOLID?", answer: "")
        let pooConcept1 = Concept(question: "¿Que es una Clase?", answer: "")
        let pooConcept2 = Concept(question: "¿Qué es y para que se utiliza la herencia?", answer: "")
        let pooConcept3 = Concept(question: "¿Qué es y para que se utilizan las interfaces?", answer: "")
        let pooConcept4 = Concept(question: "¿Qué es el polimorfismo?", answer: "")
        
        let codeReview = Category(name: "Code review", concepts: [codeReviewConcept])
        let accessControl = Category(name: "Niveles de acceso", concepts: [accessControlConcept])
        let architectureDesign = Category(name: "Patrones de arquitectura", concepts: [architectureDesignConcept])
        let desingPatterns = Category(name: "Patrones de diseño", concepts: [designPatternConcept])
        let solid = Category(name: "SOLID", concepts: [solidConcept])
        let poo = Category(name: "Programación orientada a objetos", concepts: [pooConcept1, pooConcept2, pooConcept3, pooConcept4])
        
        categories.append(codeReview)
        categories.append(accessControl)
        categories.append(architectureDesign)
        categories.append(desingPatterns)
        categories.append(solid)
        categories.append(poo)
    }
    
}
