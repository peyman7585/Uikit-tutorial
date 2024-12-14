//
//  ButtonTutorialViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/14/24.
//

import UIKit

class ButtonTutorialViewController: UIViewController {

    private lazy var showNameButton : UIButton = {
        let Button = UIButton(type: .system)
        Button.setTitle("Show Name", for: .normal)
        Button.translatesAutoresizingMaskIntoConstraints=false
        Button.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        Button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        Button.setTitleColor(.white, for: .normal)
        
        return Button
    }()
    
    private var nameLabel : UILabel = {
        let Label = UILabel()
        Label.text = "My name is peyman"
        Label.textColor = .red
        Label.font = UIFont.boldSystemFont(ofSize: 14)
        Label.textAlignment = .center
        Label.isHidden = true
        Label.translatesAutoresizingMaskIntoConstraints=false
        
        return Label
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        showNameButton.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant:  350).isActive=true
        showNameButton.heightAnchor.constraint(equalToConstant:  44).isActive=true
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius=10
        
        view.addSubview(nameLabel)
        
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 16).isActive=true
    }
    @objc func onShowNameTapped(){
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showNameButton.setTitle(title, for: .normal)
    }
    
}

#Preview {
    ButtonTutorialViewController()
}
