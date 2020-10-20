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

