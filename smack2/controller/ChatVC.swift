import Alamofire
import SocketIO
import SwiftyJSON

import UIKit

class ChatVC: UIViewController {
  
  @IBOutlet weak var menuBtn: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    menuBtn.addTarget(
      self.revealViewController(),
      action: #selector(SWRevealViewController.revealToggle(_:)),
      for: .touchUpInside
    )
    
    // left and right swap to open or close the rear controller
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    // tap to hide the rear view
    self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
  }

}

