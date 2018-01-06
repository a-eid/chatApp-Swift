import Foundation

struct Channel: Equatable {
  let name: String
  
  static func ==(lhs: Channel, rhs: Channel) -> Bool{
    return lhs.name == rhs.name
  }
  init(name: String) {
    self.name = "#\(name)"
  }
}
