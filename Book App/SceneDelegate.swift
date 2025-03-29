//
//  SceneDelegate.swift
//  Book App
//
//  Created by Александр Семёнов on 28.03.2025.
//

import UIKit

enum WindowCase {
    case preview, reg, onboarding, main
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        NotificationCenter.default.addObserver(
                self,
                selector: #selector(windowManager),
                name: .windowManager,
                object: nil
            )
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = PreviewView()
        window?.makeKeyAndVisible()
    }

    @objc
    private func windowManager(notification: Notification) {
    }
    
}

