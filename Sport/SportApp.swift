//
//  SportApp.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI
import OneSignal

@main
struct SportApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       // Remove this method to stop OneSignal Debugging
       OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)

       OneSignal.initWithLaunchOptions(launchOptions)
       OneSignal.setAppId("YOUR_ONESIGNAL_APP_ID")

       OneSignal.promptForPushNotifications(userResponse: { accepted in
         print("User accepted notification: \(accepted)")
       })

      // Set your customer userId
      // OneSignal.setExternalUserId("userId")

       return true
    }
}
