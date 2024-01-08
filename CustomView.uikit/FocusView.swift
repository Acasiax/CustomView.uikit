//
//  FocusView.swift
//  CustomView.uikit
//
//  Created by 이윤지 on 1/8/24.
//

import UIKit

class FocusView: UIView {

    override var canBecomeFocused: Bool {
           return true
       }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        if context.previouslyFocusedView === self {
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
        
        if context.nextFocusedView === self {
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            })
        }
    }
}
