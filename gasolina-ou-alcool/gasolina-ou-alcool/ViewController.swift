//
//  ViewController.swift
//  gasolina-ou-alcool
//
//  Created by Nubio Knupp on 12/09/16.
//  Copyright © 2016 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var precoAlcoolText: UITextField!;
    @IBOutlet weak var precoGasolinaText: UITextField!;
    @IBOutlet weak var resultadoLabel: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcular(_ sender: AnyObject) {
        let precoAlcool = Float(precoAlcoolText.text!)!;
        let precoGasolina = Float(precoGasolinaText.text!)!;
        
        
        let resultado = Float(precoGasolina * 0.70);
        
        if(precoAlcool > resultado){
            resultadoLabel.text = "Melhor utilizar gasolina!";
        }else{
            resultadoLabel.text = "Melhor utilizar álcool!";
        }

    }
}

