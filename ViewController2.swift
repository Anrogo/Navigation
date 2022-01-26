//
//  ViewController2.swift
//  Navigation
//
//  Created by user190722 on 1/2/22.
//

import UIKit

class ViewController2: UIViewController {

    var person: Person?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var btnCerrar: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let person = person {
            nameLabel.text = person.name
            ageLabel.text = "\(person.age)"
        }
    }
 
    
    @IBAction func Cerrar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
