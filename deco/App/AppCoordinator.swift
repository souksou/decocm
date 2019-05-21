//
//  AppCoordinator.swift
//  deco
//
//  Created by Souksouvanh Thomas on 20/05/2019.
//  Copyright © 2019 th. All rights reserved.
//

import UIKit
import RxSwift

class AppCoordinator : BaseCoordinator<Void> {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() -> Observable<Void> {        
        // if the user is not already log
        let repositoryListCoordinator = LoginCoordinator(window: window)
        return coordinate(to: repositoryListCoordinator)
    }
}
