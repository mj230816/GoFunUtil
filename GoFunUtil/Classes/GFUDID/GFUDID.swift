//
//  GofunUDID.swift
//  GofunUDID
//
//  Created by 熊安银 on 2017/1/10.
//  Copyright © 2017年 com.sqev. All rights reserved.
//

import UIKit
import KeychainAccess
import CryptoSwift

public class GofunUDID {
    
    fileprivate let UDID_KEY = "shouqievUDID"
    
    private init(){}
    
    public static let `default` : GofunUDID = {
        return GofunUDID()
    }()
    
    public func udid(groupId: String = "com.shouqiev", serviceId: String = "com.gvsoft.GoFun") -> String {
        if let udidString = UserDefaults.standard.object(forKey: UDID_KEY) {
            return udidString as! String
        }
        
        let keychain = Keychain(service: "\(groupId):\(serviceId)")
        if let udidString = keychain[UDID_KEY] {
            UserDefaults.standard.set(udidString, forKey: UDID_KEY)
            return udidString
        }
        
        let udidString = "shouqiev\(Date().timeIntervalSince1970)".md5()
        UserDefaults.standard.set(udidString, forKey: UDID_KEY)
        keychain[UDID_KEY] = udidString
        return udidString
    }
}
