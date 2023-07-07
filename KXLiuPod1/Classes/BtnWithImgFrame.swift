//
//  BtnWithImgFrame.swift
//  QLKG_TO_KGDR
//
//  Created by mir002 on 2022/10/26.
//  Copyright © 2022 MDKB Media &Technology(Beijing) Co.,Ltd. All rights reserved.
//

import UIKit
//MARK: 按钮带居中图片

enum VerticalPostion{
    case top
    case center
    case buttom
}
enum HorizonalPostion{
    case left
    case center
    case right
}
class BtnWithImgFrame: UIButton {
	var imgWidth:CGFloat = 0
    var imgHeight:CGFloat = 0
    var needHorizonPostion:HorizonalPostion = .center
    var needVerticalPostion:VerticalPostion = .center
    init(_ btnFrame:CGRect,_ img:UIImage,_ imgWidth:CGFloat,_ imgHeight:CGFloat,needHorizonPostion:HorizonalPostion = .center,needVerticalPostion:VerticalPostion = .center){
        super.init(frame: btnFrame)
        self.imgWidth = imgWidth
        self.imgHeight = imgHeight
        self.needHorizonPostion = needHorizonPostion
        self.needVerticalPostion = needVerticalPostion
        self.setImage(img, for: .normal)
    }
    override func setImage(_ image: UIImage?, for state: UIControl.State) {
        super.setImage(image, for: state)
        self.setNeedsLayout()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.imageView?.frame = CGRect(x: 0, y: 0, width: imgWidth, height: imgHeight)
        self.backgroundColor = .clear
        switch needHorizonPostion {
            case .center :
                self.imageView?.centerX = self.width / 2
            case .left:
                self.imageView?.x = 0
            case .right:
                self.imageView?.x = self.width - imgWidth
        }
        switch needVerticalPostion{
            case .center :
                self.imageView?.centerY = self.height / 2
            case .top:
                self.imageView?.y = 0
            case .buttom:
                self.imageView?.y = self.height - imgHeight
        }
        self.imageView?.contentMode = .scaleAspectFit
    }
    func setImgConerR(_ r:CGFloat){
        self.imageView?.cornerRadius = r
        setNeedsLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
