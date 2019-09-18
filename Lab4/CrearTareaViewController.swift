//
//  CrearTareaViewController.swift
//  Lab4
//
//  Created by Diego Martinez Rayme on 9/15/19.
//  Copyright © 2019 Diego Martinez Rayme. All rights reserved.
//

import UIKit

class CrearTareaViewController: UIViewController {

    
    
    @IBOutlet weak var txtNombreTarea: UITextField!
    
    @IBOutlet weak var swImportante: UISwitch!
    
    //var anteriorVC = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        // Do any additional setup after loading the view.
    }
    

    @IBAction func agregar(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let tarea = Tarea(context: context)
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        
        (UIApplication.shared.delegate as!	AppDelegate).saveContext()
        //anteriorVC.tareas.append(tarea)
       // anteriorVC.tableView.reloadData()
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
