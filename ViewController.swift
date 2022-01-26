//
//  ViewController.swift
//  Navigation
//
//  Created by user190722 on 1/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    //let person = Person.createPerson()
    let person = Person(name: "Antonio", age: 25)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.label.text = "Person‘s name is \(person.name) and has \(person.age) years old"
        self.label.textColor = .orange
        self.btn.setTitle("Abrir Nueva Pantalla", for: .normal)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPersonSegueId"{
            let viewController = segue.destination
        
            if let viewController2 = viewController as? ViewController2 {
                viewController2.person = self.person
            }
        } else if segue.identifier == "OtherSegueIdentifier"{
            
        }
            
    }

}

