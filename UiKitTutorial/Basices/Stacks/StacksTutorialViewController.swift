//
//  StacksTutorialViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/14/24.
//

import UIKit

class StacksTutorialViewController: UIViewController {

    private var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        return stackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect1 = createRectangle()
        rect1.backgroundColor = .red
        
        let rect2 = createRectangle()
        rect2.backgroundColor = .blue
        
        let rect3 = createRectangle()
        rect3.backgroundColor = .green
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
   
    }
    
    private func createRectangle() -> UIView{
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        return view
        
    }
    
}

#Preview {
    StacksTutorialViewController()
}
