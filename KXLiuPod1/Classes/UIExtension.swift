//
//  UIExtension.swift
//  TestPod
//
//  Created by mir002 on 2023/6/9.
//
import UIKit
import Foundation
public extension UIView{
    var x:CGFloat{
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    var y:CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            self.frame.origin.y = newValue
        }
    }
    var height:CGFloat{
        get{
            return self.frame.height
        }
        set{
            self.frame.size.height = newValue
        }
    }
    var width:CGFloat{
        get{
            return self.frame.width
        }
        set{
            self.frame.size.width = newValue
        }
    }
    var centerY:CGFloat{
        get{
            return self.center.y
        }
        set{
            self.center.y = newValue
        }
    }
    var centerX:CGFloat{
        get{
            return self.center.x
        }
        set{
            self.center.x = newValue
        }
    }
    var maskToBounds:Bool{
        get{
            return self.layer.masksToBounds
        }
        set{
            self.layer.masksToBounds = newValue
        }
    }
    var cornerRadius:CGFloat{
        get{
            return self.layer.cornerRadius
        }
        set{
            self.maskToBounds = true
            self.layer.cornerRadius = newValue
        }
    }
    var borderColor:CGColor?{
        get{
            return self.layer.borderColor
        }
        set{
            self.layer.borderColor = newValue
        }
    }
    var borderWidth:CGFloat{
        get{
            return self.layer.borderWidth
        }
        set{
            self.layer.borderWidth = newValue
        }
    }
    var origin:CGPoint{
        get{
            return self.frame.origin
        }
        set{
            self.frame.origin = newValue
        }
    }
    var size:CGSize{
        get{
            return self.frame.size
        }
        set{
            self.frame.size = newValue
        }
        
    }
}
public extension UIButton{
    static var custum:UIButton{
        get{
            let btn = UIButton(type: .custom)
            btn.backgroundColor = .clear
            return btn
        }
    }
}
