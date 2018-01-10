





import UIKit

public extension UIView {
   public func applyGradient(topColor:UIColor, bottomColor:UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame.size = self.frame.size
        gradientLayer.colors =
            [topColor.cgColor,bottomColor.withAlphaComponent(1).cgColor]
        
        self.layer.addSublayer(gradientLayer)
    }
}




public extension UIColor {
  public  func colorFromHexString (_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}


public struct DrawerModel {
    
   public var icon = UIImage()
   public var text = String()
   public var controller = UIViewController()
    
   public init(icon:UIImage, text:String, controller:UIViewController) {
        self.icon = icon
        self.text = text
        self.controller = controller
    }
}


public enum ButtonType {
    case editProfile
    case moreButton
}


