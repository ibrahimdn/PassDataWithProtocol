//
//  ViewController2.swift
//  PassDataWithProtocol
//
//  Created by ibrahim doğan on 14.03.2019.
//  Copyright © 2019 ibrahim doğan. All rights reserved.
//

import UIKit
protocol PassDataDelegate {
    func delegate(passData: String)
}

class ViewController2: UIViewController {

    @IBOutlet weak var dataText: UITextField!
    var PassDelegate: PassDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        PassDelegate?.delegate(passData: dataText.text!)
        self.navigationController?.popViewController(animated: true)
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
