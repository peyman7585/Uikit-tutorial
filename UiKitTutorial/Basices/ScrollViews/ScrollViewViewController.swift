//
//  ScrollViewViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/14/24.
//

import UIKit

class ScrollViewViewController: UIViewController {

    private var scrollView = UIScrollView()
    
    private var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let rectHeight : CGFloat = 200
    private let numberOfRect = 20
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
            
        for _ in 1 ..< numberOfRect {
            let rect = createRectangle()
            stackView.addArrangedSubview(rect)
        }
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfRect)) + 64
        
        
    }
    
    
    private func createRectangle() -> UIView{
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .systemGray
        view.layer.cornerRadius = 16
        return view
        
    }


}

#Preview {
    ScrollViewViewController()
}
