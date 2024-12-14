//
//  TextFieldViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/14/24.
//

import UIKit

class TextFieldViewController: UIViewController {

    private var textfield: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your tasks"
        tf.borderStyle = .roundedRect
        tf.font = .systemFont(ofSize: 14)
        tf.backgroundColor = .systemGray
        tf.tintColor = .white
        return tf
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        textfield.delegate = self
        textfield.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
        view.addSubview(textfield)
    
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
  
    @objc func onEditingChanged(_ sender : UITextField) {
        print("Debuge: Text field text is\(sender.text)")
    }

}

extension TextFieldViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       print("Debuge:side effect")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Debuge: Did begin editing")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Debuge: Did end editing")
    }
    
}

#Preview {
    TextFieldViewController()
}
