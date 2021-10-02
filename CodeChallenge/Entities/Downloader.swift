//
//  Downloader.swift
//  CodeChallenge
//
//  Created by Francisco Escobar on 01/10/21.
//

import Foundation

class Downloader{
    
    func downloadData()->Data{
        
        var concepts:[Category] = []
        
        //MARK: - Code review
        
        let codeReviewDescription = """
            
            Code review es una técnica para buscar errores en un código, en la cuál uno o más programadores revisan el código de sus compañeros.
            
            Su principal objetivo es reducir los errores y elevar la calidad del código.
            
            """
        let codeReviewConcept = Concept(title: "¿Qué es y para qué utilizar el code review?",  description: codeReviewDescription, example: "")
        let codeReviewCategory = Category(name: "Code review", concepts: [codeReviewConcept])
        
        //MARK: - Access control
        
        let accessControlDescription = """
            
            Los niveles de acceso se definen para especificar desde qué clases se podrá acceder a las variables de una clase en particular.
            
            En Swift existen 5 niveles:
            
            - Private: Es el más restrictivo, sólo la clase en la que está declarada y las extensiones de esta que estén en el mismo archivo.
            - File-private: Restringe el uso de una entidad al archivo en el que fue declarada.
            - Internal: Restringe el uso de una entidad a todos los archivos que pertenezcan al mismo módulo del que fue declarada, pero no a los archivos fuera de ese módulo.
            - Public: Está abierto a todos los archivos del módulo y a todos los archivos que importen ese módulo.
            - Open: Aplica sólo a clases y miembros de clases y difiere de Public al permitir heredar y sobreescribir a código fuera del módulo.
            
            """
        
        let accessControlExample = """
            
            class Car{
            
                public var numberOfWheels = 4
                private let doorCode: String
            }
            
            
            """
        let accessControlConcept = Concept(title: "¿Cuáles son los niveles de acceso y cómo funcionan?",  description: accessControlDescription, example: accessControlExample)
        
        let accessControl = Category(name: "Control de acceso", concepts: [accessControlConcept])
        
        
        //MARK: - Architecture patterns
        
        let architecturePatternsClientServerDescription = """
            
            El patrón cliente-servidor es un patrón de arquitectura de software en el cuál un servidor le da servicio a múltiples clientes, un servidor puede estar configurado para uno o más servicios.
            
            Comúnmente se utiliza para servicios Web como lo puede ser un API.
            
            """
        
        let architecturePatternsClientServerConcept = Concept(title: "Patrón cliente-servidor",  description: architecturePatternsClientServerDescription, example: "")
        
        
        let architecturePatternsMVCDescription = """
            
            El patrón Model-View-Controller es un patrón de arquitectura de software que consta de 3 elementos:
            
            Modelo: Son los datos que maneja la aplicación, pueden ser, por ejemplo, los datos del usuario.
            Vista: Es el elemento que maneja la vista, la configura, actualiza y obtiene los eventos del usuario.
            Controlador: Es el elemento que recibe y procesa toda la información para posteriormente enviarla a la vista, toda la lógica de negocio se encuentra aquí.
            
            En este patrón el modelo y la vista no deben de tener una relación directa, la vista se comunica al controlador, el controlador actualiza el modelo y en caso de ser necesario actualiza la vista también.
            
            """
        
        let architecturePatternsMVCConcept = Concept(title: "Patrón MVC",  description: architecturePatternsMVCDescription, example: "")
        
        
        let architecturePatternsMVVMDescription = """
            
            El patrón Model-View-ViewModel es una respuesta a los "massive View Controllers" que se generaban al usar el modelo MVC en aplicaciones muy grandes. Al igual que el patrón MVC consta de 3 elementos:
            
            Model: Al igual que en MVC el modelo son los datos que maneja la aplicación.
            View: En este patrón el controlador y la vista pasan a estar un poco más unidos, aquí se manejan los eventos y actualizaciones a la vista.
            ViewModel: El ViewModel es a donde pasa a estar el procesamiento de datos y la lógica de negocio.
            
            En este patrón el que comunica a los elementos es el ViewModel, la vista notifica al ViewModel de alguna interacción, el ViewModel obtiene el modelo y hace lo necesario con él, procesa la información y actualiza la vista.
            
            """
        
        let architecturePatternsMVVMConcept = Concept(title: "Patrón MVVM",  description: architecturePatternsMVVMDescription, example: "")
        
        
        let architecturePatternsCategory = Category(name: "Patrones de arquitectura", concepts: [architecturePatternsClientServerConcept, architecturePatternsMVCConcept, architecturePatternsMVVMConcept])
        
        
        //MARK: - Design patterns
        
        let designPatternsSingletonDescription = """
            
            El patrón de diseño de Singleton es un patrón creacional en el cuál sólo puede exitir una instancia de una clase, la clase hace privado su constructor y lo llama la misma clase, si alguien intenta obtener una instancia de la clase verifica si ya existe una creada, si sí regresa esa instancia creada, de lo contrario la crea. En Swift la instancia comúnmente se llama shared o default.
            
            """
        
        let designPatternsSingletonExample = """
            
            class Singleton{
            
                static let shared = Singleton()
            
                private init(){}
            }
            
            """
        
        let designPatternsSingletonConcept = Concept(title: "Patrón Singleton",  description: designPatternsSingletonDescription, example: designPatternsSingletonExample)
        
        let designPatternBuilderDescription = """
            
            El patrón Builder es un patrón de diseño creacional el cuál permite crear objetos complejos por fases, donde en cada fase el objeto es totalmente funcional.
            
            En ocasiones se crea una clase directora, la cuál tiene los pasos para crear un determinado objeto.
            
            Por ejemplo podríamos hacer un Builder para crear autos personalizados, donde se podría elegir el color, el material de los asientos y el tipo de motor.
            
            """
        
        let designPatternBuilderExample = """
            
            protocol Builder{
            
                reset()
                setColor()
                setSeats()
                setEngine()
            }
            
            
            class Car{
            }
            
            class CarBuilder{
            
                private var car:Car()
            
                init(){
            
                    self.reset()
                }
            
                func setColor(){}
            
                func setSeats(){}
            
                func setEngine(){}
            
                func get()->Car{
                    return self.car
                }
            }
            
            """
        
        let designPatternBuilderConcept = Concept(title: "Patrón Builder",  description: designPatternBuilderDescription, example: designPatternBuilderExample)
        
        let designPatternsCategory = Category(name: "Patrones de diseño", concepts: [designPatternsSingletonConcept, designPatternBuilderConcept])
        
        
        let SOLIDSDescription = """
            
            El principio de responsabilidad única dicta que una clase sólo debe de dedicarse a una sóla cosa.
            
            """
        
        let SOLIDSConcept = Concept(title: "Single responsibility principle",  description: SOLIDSDescription, example: "")
        
        let SOLIDODescription = """
            
            El principio de abierto/cerrado dicta que una clase debe de estar abierta a su expansión pero cerrada a su modificación, esto quiere decir que es posible aumentar sus funciones y características sin modificar las ya existentes.
            
            """
        
        
        let SOLIDOConcept = Concept(title: "Open/close principle",  description: SOLIDODescription, example: "")
        
        let SOLIDLDescription = """
            
            Este principio nos dice que las instancias de un objeto de una clase deben de poder ser reemplazadas por las clases de las que heredan sin alterar el correcto funcionamiento del programa.
            
            """
        
        
        let SOLIDLConcept = Concept(title: "Liskov substitution principle",  description: SOLIDLDescription, example: "")
        
        
        let SOLIDIDescription = """
            
            Diferentes interfaces son mejor que una interfaz de prósito general. Esto quiere decir que una interfaz no debe de tener todo el funcionamiento de la aplicación, para que un objeto sólo pueda de implementar las interfaces que necesite.
            
            """
        
        
        let SOLIDIConcept = Concept(title: "Interface segregation principle",  description: SOLIDIDescription, example: "")
        
        let SOLIDDDescription = """
            
            Este principio dicta que se debe de depender de abstracciones, no implementaciones.
            
            Esto quiere decir que las clases no deben de esperar las clases directamente en sus métodos, si no en interfaces que las clases implementen.
            
            """
        
        
        let SOLIDDConcept = Concept(title: "Dependency inversion principle",  description: SOLIDDDescription, example: "")
        
        let SOLIDCategory = Category(name: "Principios SOLID", concepts: [SOLIDSConcept, SOLIDOConcept, SOLIDLConcept, SOLIDIConcept, SOLIDDConcept])
        
        
        let pooClassDescription = """
            
            En programación orientda a objetos una clase son los planos de un objeto, es el archivo que define sus características y comportamientos, pudiendo ser propios o heredados de alguna otra clase.
            
            """
        
        
        let pooClassExample = """
            
            class Coche{
            
                private var velocidad: GCFloat = 0.0
            
                private func arrancar(){
                    velocidad += 1.0
                }
            }
            
            """
        
        
        let pooClassConcept = Concept(title: "¿Que es una Clase?", description: pooClassDescription, example: pooClassExample)
        
        let pooInheritanceDescription = """
            
            La herencia es cuando una clase utiliza las propiedades, características y métodos de otras clases extendiendo así la funcionalidad de la clase padre.
            
            """
        
        
        let pooInheritanceExample = """
            
            class Automovil{
            
                private var velocidad: GCFloat = 0.0
            
                private func arrancar(){
                    velocidad += 1.0
                }
            }
            
            class Coche: Automovil{
            
                private var color: UIColor
            }
            
            """
        
        
        let pooInheritanceConcept = Concept(title: "¿Qué es y para que se utiliza la herencia?", description: pooInheritanceDescription, example: pooInheritanceExample)
        
        let pooInterfaceDescription = """
            
            Las interfaces son elementos que definen qué metodos debe de implementar una clase. Las interfaces definen los métodos y las clases deben de implementarlas.
            
            En Swift las interfaces se llaman protocolos.
            
            """
        
        
        let pooInterfaceExample = """
            
            protocol Volar{
            
                func despegar()
                func aterrizar()
            }
            
            class Avion: Volar{
            
                private var velocity = 0
            
                func despegar(){
            
                    velocity += 1
                }
            
                func aterrizar(){
            
                    velocity -= 1
                }
            }
            
            """
        
        
        let pooInterfaceConcept = Concept(title: "¿Qué es y para que se utilizan las interfaces?", description: pooInterfaceDescription, example: pooInterfaceExample)
        
        
        let pooPolymorphismDescription = """
            
            El polimorfismo es cuando el valor de las características de un objeto son únicas comparadas a otros objetos de la misma clase.
            
            """
        
        
        let pooPolymorphismExample = """
            
            var autoRojo = Automovil()
            var autoAzul = Automovil()
            
            autoRojo.color = UIColor.red
            autoAzul.color = UIColor.blue
            
            """
        
        
        let pooPolymorphismConcept = Concept(title: "¿Qué es el polimorfismo?", description: pooPolymorphismDescription, example: pooPolymorphismExample)
        
        let pooCategory = Category(name: "Programación orientada a objetos", concepts: [pooClassConcept, pooInheritanceConcept, pooInterfaceConcept, pooPolymorphismConcept])
        
        
        let apiWebDescription = """
            
            Un API (Application programming interface) es el punto de entrada a un servidor desde el exterior, están hechas espacialmente para que otras plataformas puedan acceder a los datos del servidor de forma segura.
            
            Las API se conforman por un verbo, que define la acción que hará, y la url, que apunta al código que será ejecutado.
            
            Las acciones pueden ser:
            
            GET - Obtiene una entidad
            POST - Crea una entidad
            PUT - Modifica una entidad
            DELETE - Borra una entidad
            
            """
        
        
        let apiWebConcept = Concept(title: "¿Qué es y cómo funciona una API web?", description: apiWebDescription, example: "")
        
        let apiToolsDescription = """
            
            Existen varias herramientas para probar una Web API, entre ellas:
            
            - Postman
            - Insomnia
            
            Éstas herramientas permiten enviar solicitudes a una API configurando las peticiones como puede ser las cabeceras, la información que se envía y su formato, el método de autenticación etc. También nos permite ver la respuesta en diferentes formatos como lo puede ser en texto plano, JSON etc.
            
            """
        
        
        let apiToolsConcept = Concept(title: "¿Qué herramientas se pueden utilizar para probar Web APIs?", description: apiToolsDescription, example: "")
        
        let apiCategory = Category(name: "API", concepts: [apiWebConcept, apiToolsConcept])
        
        let errorHandlingDescription = """
            
            Una herramienta muy utilizada para el control de errores es el try catch, existen en la mayoría de los lenguajes y nos permite intentar ejecutar un código 'try' y en caso de un error atraparlo y manejarlo 'catch'.
            
            En Swift podemos hacerlo mediante la sentencia do-catch, para hacerlo se define el código dentro del bloque 'do' y escribimos un 'try' en las sentencias que arrojan error, después del bloque 'do' creamos un bloque 'catch', se pueden poner uno o más bloques catch para identificar diferentes tipos de errores, cuando se arroja un error se identifica cuál bloque catch coincide con ese error y es el que se ejecuta, si no se especifica ningún patrón de error tenemos una variable local llamada error que almacena el error.
            
            """
        
        let errorHandlingExample = """
            
            do{
            
                let userData = try JSONSerialization.jsonObject(with: data, options: [])
            }catch{
                print(error)
            }
            
            """
        
        let errorHandlingConcept = Concept(title: "¿Qué herramienta has utilizado para el manejo de errores?", description: errorHandlingDescription, example: errorHandlingExample)
        
        let errorHandlingCategory = Category(name: "¿Qué herramienta has utilizado para el manejo de errores?", concepts: [errorHandlingConcept])
        
        
        let tDDDescription = """
            
            Test driven development es un estilo de programación en el cuál el desarrollo se centra en crear pruebas unitarias y generar el código al rededor de ellas.
            
            El camino a tomar sería el siguiente:
            
            Primero se crea una prueba unitaria simulando una característica de la aplicación, como aún no existe ese código la prueba fallará. El siguiente paso es crear el código suficiente para pasar esa prueba unitaria, después se refactoriza el código manteniéndolo lo más simple posible y inicia el proceso otra vez.
            
            Al final tendremos muchas pruebas unitarias donde se centrará el desarrollo.
            
            """
        
        let tDDConcept = Concept(title: "Test driven development", description: tDDDescription, example: "")
        
        let tDDCategory = Category(name: "Test driven development", concepts: [tDDConcept])
        
        concepts.append(codeReviewCategory)
        concepts.append(accessControl)
        concepts.append(architecturePatternsCategory)
        concepts.append(designPatternsCategory)
        concepts.append(SOLIDCategory)
        concepts.append(pooCategory)
        concepts.append(apiCategory)
        concepts.append(errorHandlingCategory)
        concepts.append(tDDCategory)
        
        let dataConcepts = try! JSONEncoder().encode(concepts)
        
        return dataConcepts
        
    }
}
