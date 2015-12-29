//
//  NavigationControllerDelegate.swift
//  tips
//
//  Created by Josh Gebbeken on 12/28/15.
//  Copyright © 2015 Josh Gebbeken. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(
        navigationController: UINavigationController,
        animationControllerForOperation operation:
        UINavigationControllerOperation,
        fromViewController fromVC: UIViewController,
        toViewController toVC: UIViewController
        ) -> UIViewControllerAnimatedTransitioning? {
            
            return FadeInAnimator()
    }

}
