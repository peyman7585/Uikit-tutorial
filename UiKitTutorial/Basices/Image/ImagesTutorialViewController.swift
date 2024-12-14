//
//  ImagesTutorialViewController.swift
//  UiKitTutorial
//
//  Created by Peyman on 12/14/24.
//

import UIKit

class ImagesTutorialViewController: UIViewController {

    private var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(systemName: "paperplane")
        imageView.clipsToBounds = true
        imageView.tintColor = .red
        imageView.contentMode = .scaleAspectFit
          
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }

}

#Preview {
    ImagesTutorialViewController()
}
