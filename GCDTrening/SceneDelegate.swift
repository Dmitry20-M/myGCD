//
//  SceneDelegate.swift
//  GCDTrening
//
//  Created by Mac on 21.01.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = TabBar()
        window.makeKeyAndVisible()
        self.window = window
        
    }
    
}

