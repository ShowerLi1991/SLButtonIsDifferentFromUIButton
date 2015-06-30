

import UIKit

//enum UIButtonType : Int {
//    
//    case Custom // no button type
//    @available(iOS 7.0, *)
//    case System // standard system button
//    
//    case DetailDisclosure
//    case InfoLight
//    case InfoDark
//    case ContactAdd
//    
//    static var RoundedRect: UIButtonType { get } // Deprecated, use UIButtonTypeSystem instead
//}
//
//@available(iOS 2.0, *)
//class UIButton : UIControl {
//    
//    convenience init(type buttonType: UIButtonType)


enum SLButtonType: Int {
    case TitleIsUnderImage = 0
    case TitleIsOverImage
    case TitleIsLeftImage
}

class SLButton: UIButton {

    var type: SLButtonType
    
    init(type: SLButtonType) {
        self.type = type
        super.init(frame:CGRectZero)
        self.contentEdgeInsets = UIEdgeInsetsMake(0, -1200, 0, -1200)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setTitleAndImageEdgeInsetsWithSLButtonType(type)
    }
    
    
    func setTitleAndImageEdgeInsetsWithSLButtonType(type: SLButtonType) {
        switch type {
            
        case SLButtonType.TitleIsUnderImage:
            imageExsitAndTetExsit({ () -> () in
                
                self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel!.frame.size.width, 0, 0)
                
                }, textExsit: { () -> () in
                    
                self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView!.image!.size.width, -self.imageView!.image!.size.height - self.titleLabel!.frame.size.height * 0.5 - 20, 0)
            })
        
        case SLButtonType.TitleIsOverImage:
            imageExsitAndTetExsit({ () -> () in
                
                self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel!.frame.size.width, 0, 0);

                }, textExsit: { () -> () in
                    
                self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView!.image!.size.width, self.imageView!.image!.size.height + self.titleLabel!.frame.size.height * 0.5 + 20, 0);

            })
            
        case  SLButtonType.TitleIsLeftImage:
            imageExsitAndTetExsit({ () -> () in
                
                self.imageEdgeInsets = UIEdgeInsetsMake(0, self.frame.size.width - self.imageView!.image!.size.width, 0, 0);

                }, textExsit: { () -> () in
                    
                self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView!.image!.size.width * 2, 0, 0);

            })
        }
    }
    
    func imageExsitAndTetExsit(imageExsit: () -> (), textExsit: () -> ()) {
        if imageView?.image != nil {
            textExsit()
        }
        if titleLabel?.text != nil {
            imageExsit()
        }
    }



    



 

}
