//
//  TareaCompletadaViewController.swift
//  Lab4
//
//  Created by Diego Martinez Rayme on 9/16/19.
//  Copyright © 2019 Diego Martinez Rayme. All rights reserved.
//

import UIKit

class TareaCompletadaViewController: UIViewController {

    @IBOutlet weak var completarTarea: UIButton!
    
    @IBOutlet weak var tareaLabel: UILabel!
    
    var tarea : Tarea? = nil
    //var anteriorVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tarea!.importante{
            tareaLabel.text = "👽\(tarea!.nombre!)"
        }else{
            tareaLabel.text = tarea!.nombre!
        }
    }
    
    @IBAction func completarTarea(_ sender: Any) {
        print("INDEX SELECCIONADO")
       // print(anteriorVC.indexSeleccionado)
       // anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado)
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(tarea!)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
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
