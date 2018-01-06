import Alamofire
import SocketIO
import SwiftyJSON

import UIKit

class ChannelVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var table: UITableView!
  
  let cs = ChannelService.instance
  
  override func viewDidLoad() {
    super.viewDidLoad()
    table.dataSource = self
    table.delegate = self
    let _ = cs.addChannel(name: "web dev")
    let _ = cs.addChannel(name: "ios dev")
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cs.getChannels().count
  }
  

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let channel = tableView.dequeueReusableCell(withIdentifier: "channelCell", for: indexPath) as? ChannelCell{
      channel.updateUI(channel: cs.getChannels()[indexPath.row])
      channel.selectionStyle = .none
      return channel
    }else{
      return UITableViewCell()
    }
  }
  
  @IBAction func loginTapped(_ sender: Any) {
    performSegue(withIdentifier: TO_LOGIN, sender: self)
  }
  
  @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}

}

