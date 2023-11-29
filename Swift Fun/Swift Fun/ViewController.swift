//
//  ViewController.swift
//  Swift Fun
//
//  Created by Nompilo Moyo on 2023/11/28.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var myFirstLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //app background
        view.backgroundColor = UIColor.white
        myFirstLabel.text = "0"
        
    }


    @IBAction func changeText(_ sender: Any) {
        count = count + 1
        myFirstLabel.text = String(count)
        if count >= 5 {
            view.backgroundColor = UIColor.purple
        }
    }
}

