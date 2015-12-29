//
//  FadeInAnimator.swift
//  tips
//
//  Created by Josh Gebbeken on 12/28/15.
//  Copyright © 2015 Josh Gebbeken. All rights reserved.
//

import UIKit

class FadeInAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.35
    }
    
    func animateTransition(
        transitionContext: UIViewControllerContextTransitioning) {
            let containerView = transitionContext.containerView()
            let fromVC = transitionContext.viewControllerForKey(
                UITransitionContextFromViewControllerKey)
            let toVC = transitionContext.viewControllerForKey(
                UITransitionContextToViewControllerKey)
            
            containerView!.addSubview(toVC!.view)
            toVC!.view.alpha = 0.0
            
            let duration = transitionDuration(transitionContext)
            UIView.animateWithDuration(duration, animations: {
                toVC!.view.alpha = 1.0
                }, completion: { finished in
                    let cancelled = transitionContext.transitionWasCancelled()
                    transitionContext.completeTransition(!cancelled)
            })
    }
    

}
