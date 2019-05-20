//
//  AppDelegate.swift
//  Camp
//
//  Created by Rennan Rebouças on 29/04/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    /// The base Navigation Controller, its rootViewController is a MapViewController
    lazy var rootNavigationController: UINavigationController = {

        let mapViewController = DetailsViewController()
        let profileViewController = ProfileViewController()
        return UINavigationController(rootViewController: profileViewController)
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.rootNavigationController
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {
 
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        do {
            try CoreDataManager.shared.saveContext()
        }
        catch {
//            It's just printint the error, but it should be better handled
            print(error)
        }
    }

}
