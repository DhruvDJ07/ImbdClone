//
//  AppDelegate.swift
//  IMDBClone
//
//  Created by Sinan Özman on 11.02.2021.
//  
//

import Foundation
import UIKit
import IQKeyboardManagerSwift

/// A set of methods that you use to manage shared behaviors for your app.
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Application Lifecycle
    /**
     Tells the delegate that the launch process is almost done and the app is almost ready to run.
     - Parameters:
        - application: The singleton app object.
        - launchOptions: A dictionary indicating the reason the app was launched (if any). The contents of this dictionary may be empty in situations where the user launched the app directly. For information about the possible keys in this dictionary and how to handle them, see Launch Options Keys.
     - Returns: false if the app cannot handle the URL resource or continue a user activity, otherwise return true. The return value is ignored if the app is launched as a result of a remote notification.
     */
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Config.readConfig()
        IQKeyboardManager.shared.enable = true
        return true
    }
    // MARK: - USceneSession Lifecycle
    /**
     Returns the configuration data for UIKit to use when creating a new scene.
     - Parameters:
        - application: The singleton app object.
        - configurationForConnecting: The session object associated with the scene. This object contains the initial configuration data loaded from the app's Info.plist file, if any.
        - options: System-specific options for configuring the scene.
     - Returns: The configuration object containing the information needed to create the scene.
     */
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    /**
     Tells the delegate that the user closed one or more of the app's scenes from the app switcher.
     - Parameters:
        - application: The singleton app object.
        - sceneSessions: The session objects associated with the discarded scenes.
     */
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
