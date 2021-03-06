//
//  SceneDelegate.swift
//  Chapter03_TabBar
//
//  Created by KyungDong Han on 2022/01/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
        // 루트 뷰 컨트롤러 UITabBarController로 캐스팅한다.
        if let tbC = self.window?.rootViewController as? UITabBarController {
            let calendar = "calendar"
            let file = "file-tree"
            let photo = "photo"
            
            // 탭 바에서 탭 바 아이템 배열을 가져온다
            if let tbItems = tbC.tabBar.items {
                // 탭 바 아이템에 커스텀 이미지를 등록한다.
                // tbItems[0].image = UIImage(named: calendar)
                // tbItems[1].image = UIImage(named: file)
                // tbItems[2].image = UIImage(named: photo)
                tbItems[0].image = UIImage(named: "designbump")?.withRenderingMode(.alwaysOriginal)
                tbItems[1].image = UIImage(named: "rss")?.withRenderingMode(.alwaysOriginal)
                tbItems[2].image = UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal)
                
                for tbItem in tbItems {
                    let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                    tbItem.selectedImage = image
                }
                
                // 외형 프록시 객체 -> 요소별 속성을 공통으로 적용할 수 있는 객체
                let tbItemProxy = UITabBarItem.appearance()
                tbItemProxy.setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .disabled)
                tbItemProxy.setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
                tbItemProxy.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15)], for: .normal)

                // 탭 바 아이템에 타이틀을 설정한다.
                tbItems[0].title = calendar
                tbItems[1].title = file
                tbItems[2].title = photo
            }
            // tbC.tabBar.tintColor = .white
            // tbC.tabBar.unselectedItemTintColor = .gray
            // 탭 바에 배경 이미지를 설정한다.
            // tbC.tabBar.backgroundImage = UIImage(named: "menubar-bg-mini")
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

