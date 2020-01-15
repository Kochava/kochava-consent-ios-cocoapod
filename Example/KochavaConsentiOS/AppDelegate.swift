//
//  AppDelegate.swift
//  KochavaConsentiOS
//
//  Created by John Bushnell on 05/01/2019.
//  Copyright (c) 2020 Kochava. All rights reserved.
//



import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    
    
    var window: UIWindow?


    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        KVALog.shared.level = .info
        
        print("KVACoreProduct.shared.standardVersionInfoString = \(KVACoreProduct.shared.standardVersionInfoString)")
        print("KVAConsentProduct.shared.standardVersionInfoString = \(KVAConsentProduct.shared.standardVersionInfoString)")
                
        // KochavaTracker
        // ⓘ Configure.
        KochavaTracker.shared.configure(
            withParametersDictionary: [kKVAParamAppGUIDStringKey: "_YOUR_APP_GUID_"],
            delegate: nil
        )

        // KVAConsentClient
        // 1. Register the Kochava deviceIdString as an identity.
        // 2. Start, now that we’ve registered at least one identity.
        KVAConsentClient.shared.registerIdentity(
            withNameString: "kochava_device_id",
            valueString: KochavaTracker.shared.deviceIdString()!
        )

        KVAConsentClient.shared.start()
        
        return true
    }
}



