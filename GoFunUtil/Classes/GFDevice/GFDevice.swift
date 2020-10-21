//
//  DeviceConsts.swift
//  GFMacro
//
//  Created by 宋千 on 2020/9/22.
//

public let SCREEN_WIDTH     = UIScreen.main.bounds.size.width
public let SCREEN_HEIGHT    = UIScreen.main.bounds.size.height
public let TOP_BAR_HEIGHT   = CGFloat(64)

public let IPHONE_5S_HEIGHT = CGFloat(568)
public let IPHONE_6_HEIGHT  = CGFloat(667)
public let IPHONE_6P_HEIGHT = CGFloat(736)

public let IPHONE_5S_WIDTH  = CGFloat(320)
public let IPHONE_6_WIDTH   = CGFloat(375)
public let IPHONE_6P_WIDTH  = CGFloat(414)

public let isIPhoneFillet       = (UIApplication.shared.statusBarFrame.size.height == 44)
public let isIPhoneFilletSMax   = isIPhoneFillet && (SCREEN_WIDTH == IPHONE_6P_WIDTH)
public let isIphonX             = isIPhoneFillet && (SCREEN_WIDTH == IPHONE_6_WIDTH)
public let isIPhoneSE           = (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 640, height: 1136).equalTo((UIScreen.main.currentMode?.size)!) : false)
public let isIPhone6            = (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 750, height: 1334).equalTo((UIScreen.main.currentMode?.size)!) : false)
public let isIPhone6P           = (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? (CGSize(width: 1242, height: 2208).equalTo((UIScreen.main.currentMode?.size)!) || CGSize(width: 1125, height: 2001).equalTo((UIScreen.main.currentMode?.size)!)) : false)


extension UIDevice {
    
    public var modelName : String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else {
                return identifier
            }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    public var modelNameLife: String {
        switch self.modelName {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,7", "iPad6,8":                      return "iPad Pro"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return self.modelName
        }
    }
}

