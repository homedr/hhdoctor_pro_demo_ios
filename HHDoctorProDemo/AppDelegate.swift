//
//  AppDelegate.swift
//  HHDoctorProDemo
//
//  Created by Shi Jian on 2020/1/17.
//  Copyright © 2020 Shi Jian. All rights reserved.
//

import UIKit
import HHDoctorSDK
import HHDoctor_pro

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        HHDoctor.default.start(sdkProductId: "3000", debug: false, develop: true, title: "视频医生")
        return true
    }

}

