//
//  ViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var primaryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    func greetUser(_ name: String) {
        greetingLabel.text = "Hello \(name)"
    }
    
    @IBAction func primaryButtonTapped(_ sender: Any) {
        
        greetUser("dance with sky")
        
        view.backgroundColor = .white
    }
    
}

