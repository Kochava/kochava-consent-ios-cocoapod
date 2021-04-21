//
//  AppDelegate.swift
//  KochavaConsentiOS
//
//  Created by John Bushnell on 05/01/2019.
//  Copyright (c) 2021 Kochava. All rights reserved.
//



import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    
    
    var window: UIWindow?


    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        // KVALog.shared.level
        // ⓘ Set to trace.  This will result in the KVACoreProduct being registered, and this will be prefaced by any other known modules which are included.  This will be printed to the log where they can be inspected.
        KVALog.shared.level = KVALogLevel.trace
        
        // KVAConsentClient
        // 1. Register the Kochava deviceIdString as an identity.  Note that this is mock information.
        // 2. Start, now that we’ve registered at least one identity.
        KVAConsentClient.shared.registerIdentity(
            withNameString: "user_id",
            valueString: "1567345"
        )

        KVAConsentClient.shared.start()
        
        return true
    }
}



