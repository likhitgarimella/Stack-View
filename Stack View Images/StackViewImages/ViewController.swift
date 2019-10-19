//
//  ViewController.swift
//  StackViewImages
//
//  Created by Likhit Garimella on 19/10/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let stackView: UIStackView = {
        let stack = UIStackView()
        stack.backgroundColor = .red
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually   //Images are fitted equally with this..
        stack.axis = .vertical  //Changes the axis, now the images are scalled to horizontal, gets displayed in horizontal rows rather than vertical columns..
        stack.spacing = 40  //Spacing b/w images..
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.heightAnchor.constraint(equalToConstant: view.frame.height - 100).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let ivOne = UIImageView(image: #imageLiteral(resourceName: "stack2"))
        let ivTwo = UIImageView(image: #imageLiteral(resourceName: "stack0"))
        let ivThree = UIImageView(image: #imageLiteral(resourceName: "stack1"))
        
        stackView.addArrangedSubview(ivOne)
        stackView.addArrangedSubview(ivTwo)
        stackView.addArrangedSubview(ivThree)
        
        ivOne.contentMode = .scaleAspectFit     //Images are horizontally fit but not scalled to equal size.. they come with different sizes with these..
        ivTwo.contentMode = .scaleAspectFit
        ivThree.contentMode = .scaleAspectFit   //---> These 3 lines actually not required, when we are Filling it rather than Fitting it, in next 3 lines of code..
        
        ivOne.contentMode = .scaleAspectFill    //Makes images fill completely..
        ivTwo.contentMode = .scaleAspectFill
        ivThree.contentMode = .scaleAspectFill
        
        ivOne.clipsToBounds = true
        ivTwo.clipsToBounds = true
        ivThree.clipsToBounds = true    //After this, the images are vertically fit, scalled and are filled by the screen completely..
    }


}

