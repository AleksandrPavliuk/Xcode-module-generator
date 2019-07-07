//
//  AppDelegate.swift
//  TemplateEditor
//
//  Created by Aleks on 7/7/19.
//  Copyright © 2019 Aleksandr Pavliuk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: ApplicationCoordinatorProtocol?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let window = window, let navigationVC = window.rootViewController as? UINavigationController {
            appCoordinator = ApplicationCoordinator(window: window, navigationController: navigationVC)
            appCoordinator?.start()
        }
        return true
    }
}

