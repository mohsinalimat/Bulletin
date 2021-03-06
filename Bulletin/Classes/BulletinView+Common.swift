//
//  BulletinView+Common.swift
//  Bulletin
//
//  Created by Mitch Treece on 7/11/17.
//  Copyright © 2017 Mitch Treece. All rights reserved.
//

import UIKit
import SnapKit

extension BulletinView {
    
    /**
     A notification styled bulletin.
     - returns: A `BulletinView` instance.
     */
    public static func notification() -> BulletinView {
        
        let bulletin = BulletinView()
        bulletin.level = .statusBar
        return bulletin
        
    }
    
    /**
     A banner styled bulletin.
     - parameter sticky: Boolean indicating whether the bulletin should be automatically dismissed. Defaults to false.
     - returns: A `BulletinView` instance.
     */
    public static func banner(sticky: Bool = false) -> BulletinView {
        
        let bulletin = BulletinView()
        bulletin.position = .top
        bulletin.duration = sticky ? .forever : .limit(5)
        bulletin.presentationAnimation.duration = 0.2
        bulletin.presentationAnimation.springDamping = 0
        bulletin.presentationAnimation.springVelocity = 0
        bulletin.style.verticalEdgeOffset = 0
        bulletin.style.horizontalEdgeOffset = 0
        bulletin.style.roundedCorners = []
        bulletin.style.roundedCornerRadius = 0
        bulletin.style.isStretchingEnabled = false
        bulletin.style.isAnimatedTouchEnabled = false
        bulletin.style.shadowAlpha = 0.08
        return bulletin
        
    }
    
    /**
     A status bar styled bulletin. This is usually used for presenting a "toast" over the status bar.
     - returns: A `BulletinView` instance.
     */
    public static func statusBar() -> BulletinView {
        
        let bulletin = BulletinView()
        bulletin.position = .top
        bulletin.level = .statusBar
        bulletin.presentationAnimation.duration = 0.2
        bulletin.presentationAnimation.springDamping = 0
        bulletin.presentationAnimation.springVelocity = 0
        bulletin.style.verticalEdgeOffset = 0
        bulletin.style.horizontalEdgeOffset = 0
        bulletin.style.roundedCorners = []
        bulletin.style.roundedCornerRadius = 0
        bulletin.style.isStretchingEnabled = false
        bulletin.style.isAnimatedTouchEnabled = false
        bulletin.style.shadowAlpha = 0
        return bulletin
        
    }
    
    /**
     An alert styled bulletin.
     - returns: A `BulletinView` instance.
     */
    public static func alert() -> BulletinView {
        
        let bulletin = BulletinView()
        bulletin.position = .center
        bulletin.duration = .forever
        bulletin.style.backgroundEffect = .darken(alpha: 0.5)
        bulletin.style.horizontalEdgeOffset = 50
        bulletin.style.roundedCornerRadius = 14
        return bulletin
        
    }
    
    /**
     A HUD styled bulletin.
     - returns: A `BulletinView` instance.
     */
    public static func hud() -> BulletinView {
        
        let bulletin = BulletinView()
        bulletin.position = .center
        bulletin.duration = .forever
        bulletin.style.backgroundEffect = .darken(alpha: 0.5)
        bulletin.style.horizontalEdgeOffset = (UIScreen.main.bounds.width / 3)
        bulletin.style.roundedCornerRadius = 14
        bulletin.style.isBackgroundDismissEnabled = false
        return bulletin
        
    }
    
    /**
     A sheet styled bulletin.
     - returns: A `BulletinView` instance.
     */
    public static func sheet() -> BulletinView {
        
        let bulletin = BulletinView()
        bulletin.position = .bottom
        bulletin.duration = .forever
        bulletin.style.backgroundEffect = .darken(alpha: 0.5)
        bulletin.style.verticalEdgeOffset = 8
        bulletin.style.isStretchingEnabled = false
        bulletin.style.isAnimatedTouchEnabled = false
        return bulletin
        
    }
    
}
