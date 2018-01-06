// not actually needed but its for me to practice more.

import UIKit

class ChannelCell: UITableViewCell {
  
  @IBOutlet weak var name: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  func updateUI(channel: Channel){
    name.text = channel.name
  }
  
  

}
