import UIKit

@IBDesignable // for it to render in the storyboard.
class GradientView: UIView {
  
  
  // this is a custom control that we can change inside the storyboard
  @IBInspectable var topColor: UIColor = UIColor.blue {
    didSet{
      // trigger a layout update.
      // this will call layoutSubview which we will override
      self.setNeedsLayout()
    }
  }
  
  @IBInspectable var bottomColor: UIColor = UIColor.green{
    didSet{
      // trigger a layout update.
      self.setNeedsLayout()
    }
  }
  
  override func layoutSubviews() {
    let gradientLayer = CAGradientLayer()
    // colors, start/end point , how big the shape I'm filling.
    gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
    gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    gradientLayer.endPoint = CGPoint(x: 1, y: 1)
    gradientLayer.frame = self.bounds
    self.layer.insertSublayer(gradientLayer, at: 0) // 0 means the first layer.
  }
}
