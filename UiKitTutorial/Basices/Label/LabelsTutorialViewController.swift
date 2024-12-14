//
//  LabelsTutorialViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/14/24.
//

import UIKit

class LabelsTutorialViewController: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "this is subtitle with gray color guys!"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        textLabel.text = "Hello word!"
        textLabel.font = .systemFont(ofSize: 20)
     
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor , constant: 10).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    



}

#Preview{ LabelsTutorialViewController()}
