//
//  LoginCoordinator.swift
//  deco
//
//  Created by Souksouvanh Thomas on 20/05/2019.
//  Copyright © 2019 th. All rights reserved.
//

import UIKit
import RxSwift

class LoginCoordinator: BaseCoordinator<Void> {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    override func start() -> Observable<Void> {
        
        let viewController = LoginViewController.initFromStoryboard(name: "Login")
        let navigationController = UINavigationController(rootViewController: viewController)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return Observable.never()
    }
}
