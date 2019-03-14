//
//  ViewController.swift
//  PassDataWithProtocol
//
//  Created by ibrahim doğan on 14.03.2019.
//  Copyright © 2019 ibrahim doğan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,PassDataDelegate {
    @IBOutlet weak var label: UILabel!
    
    func delegate(passData: String) {
        label.text = passData
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SendBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toViewController2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toViewController2" {
            let destination = segue.destination as! ViewController2
            destination.PassDelegate = self
        }
    }}

