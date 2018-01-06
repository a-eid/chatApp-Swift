import UIKit

class LoginVC: UIViewController {
  
  @IBOutlet weak var login: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  

  @IBAction func close(_ sender: Any) {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func loginTapped(_ sender: Any) {
  }

  @IBAction func registerTapped(_ sender: Any) {
    performSegue(withIdentifier: TO_REGISTER, sender: self)
  }
}
