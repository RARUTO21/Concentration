//
//  ViewController.swift
//  Concentration
//
//  Created by Anthony Leandro on 10/7/18.
//  Copyright © 2018 Anthony Leandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        let alert = UIAlertController(title: "Mensaje", message: "Este es un mensaje", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("Yes")
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("No")
        }))
    
        self.present(alert, animated: true, completion: nil)
        
        sender.setTitle("", for: UIControlState.normal)
        sender.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

