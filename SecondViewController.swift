//
//  SecondViewController.swift
//  Navigation
//
//  Created by user190722 on 1/2/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var btnNextScreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        //Primer método para llegar a otro view controller:
        //performSegue(withIdentifier: "NewScreenId", sender: nil)
        //Segundo método, en este se instancia directamente el objeto (hacia DELANTE)
        if let nextViewController = storyboard?.instantiateViewController(identifier: "NextViewControllerStoryboardId"){
            navigationController?.pushViewController(nextViewController, animated: true)
            //Y también se puede instanciar al principio, al objeto original (hacia DETRAS) = como pulsar el botón BACK
            //navigationController?.popViewController(animated: true)
            //Para volver a la pantalla inicial:
            //navigationController?.popToRootViewController(animated: true)
        }
        
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
