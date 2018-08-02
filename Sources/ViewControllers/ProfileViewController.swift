//
//  ProfileViewController.swift
//  URLNavigatorExample
//
//  Created by hiwjd on 2018/8/2.
//  Copyright © 2018年 Suyeol Jeon. All rights reserved.
//

import UIKit

import URLNavigator

final class ProfileViewController: UIViewController {
    
    // MARK: Properties
    
    private let navigator: NavigatorType
    let username: String
    
    
    // MARK: Initializing
    
    init(navigator: NavigatorType, username: String) {
        self.navigator = navigator
        self.username = username
        super.init(nibName: nil, bundle: nil)
        self.title = "\(username)'s Repositories"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Button3", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        let button2 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button2.backgroundColor = .blue
        button2.setTitle("Button4", for: .normal)
        button2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        let stack = UIStackView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = CGFloat(10)
        
        stack.addArrangedSubview(button)
        stack.addArrangedSubview(button2)
        
        self.view.addSubview(stack)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc
    func buttonAction(sender: UIButton!) {
        print("Button tapped222")
    }
}
