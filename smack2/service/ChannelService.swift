//
//  channelService.swift
//  smack2
//
//  Created by Ahmed Eid on 05/01/2018.
//  Copyright © 2018 Ahmed Eid. All rights reserved.
//

import Foundation

class ChannelService {
  static let instance = ChannelService()
  
  private var channels = [Channel]()

  func getChannels()-> [Channel]{
    return channels
  }

  func addChannel(name: String) -> Bool {
    let channel = Channel(name: name)
    
    if channels.contains(channel){
      return false
    }else{
      channels.append(channel)
      return true
    }
  }

}
