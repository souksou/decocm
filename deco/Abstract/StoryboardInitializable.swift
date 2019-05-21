//
//  StoryboardInitializable.swift
//  deco
//
//  Created by Souksouvanh Thomas on 20/05/2019.
//  Copyright © 2019 th. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard(name: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        debugPrint("storyboardIdentifier --> \(storyboardIdentifier)")
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
