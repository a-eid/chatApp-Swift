import Foundation
import Alamofire

class AuthService {
  static var instance = AuthService()
  let defaults = UserDefaults.standard
  
  var headers: Dictionary<String, String> = [
    "Content-Type": "application/json"
  ]

  var isLoggedIn: Bool{
    get{
      // .bool will return false if the key is not found
      return defaults.bool(forKey: LOGGED_ID)
    }
    set(value){
      defaults.set(value, forKey: LOGGED_ID)
    }
  }
  
  var authToken: String? {
    get{
      // here is you force unwrap it will trigger an error crash
      return defaults.value(forKey: TOKEN) as? String
    }
    set(value){
      defaults.set(value, forKey: TOKEN)
    }
  }
  
  var email: String? {
    get{
      // here is you force unwrap it will trigger an error crash
      return defaults.value(forKey: USER_EMAIL) as? String
    }
    set(value){
      defaults.set(value, forKey: USER_EMAIL)
    }
  }
  
  
  func registerUser(email: String, password: String, completion: @escaping completionHandler){
    let email = email.lowercased()
    let body: [String: String] = [
      email: email,
      password: password
    ]
    
    Alamofire.request(
      "\(BASE_URL)/account/register", method: .post,
      parameters: body, encoding: JSONEncoding.default ,
      headers: headers
      ).responseString { (resp) in
        if let _ = resp.result.error {
          completion(false)
        }else{
          completion(true)
        }
    }
  }
  
  func authUser(email: String, password: String){

  }
  
  func addUser(name: String , email: String , avatarName: String , avatarColor: String ){
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

}


