//
//  TabBar.swift
//  GCDTrening
//
//  Created by Mac on 22.01.2024.
//

import UIKit

class TabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
        
    }
    
    func setupControllers() {
        let vc = createController(viewController: ViewController(), itemName: "главный экран", ItemImage: "doc.richtext")
        viewControllers = [vc]
    }
    
    func createController(viewController: UIViewController, itemName: String, ItemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: ItemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0))  ,tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = item
        return navigationController
    }
    
    
}
