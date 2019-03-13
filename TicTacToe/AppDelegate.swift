//
//  AppDelegate.swift
//  TicTacToe
//
//  Created by Umar Yaqub on 13/03/2019.
//  Copyright © 2019 Umar Yaqub. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let ticTacToeNavController = UINavigationController(rootViewController: TicTacToeController(collectionViewLayout: UICollectionViewFlowLayout()))
        window?.rootViewController = ticTacToeNavController
        window?.makeKeyAndVisible()
        return true
    }
}

