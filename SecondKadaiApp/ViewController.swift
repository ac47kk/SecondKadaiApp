//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 近藤知加 on 2019/11/18.
//  Copyright © 2019 chika.kondou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func next(_ sender: Any) {
        let x = String(self.name.text ?? "")
        print(x)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    @IBOutlet weak var name: UITextField!
    
    @IBAction func name(_ sender: Any) {
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // segueから遷移先のResultViewControllerを取得する
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.x = String(self.name.text ?? "")
        
    }

}
