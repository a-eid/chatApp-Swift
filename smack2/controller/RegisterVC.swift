import UIKit

class RegisterVC: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  @IBAction func chooseAvatarTapped(_ sender: Any) {
    performSegue(withIdentifier: CHOOSE_AVATAR, sender: self)
  }
  
  @IBAction func close(_ sender: Any) {
    performSegue(withIdentifier: UNWIND_TO_CHANNELS, sender: self)
  }
}
