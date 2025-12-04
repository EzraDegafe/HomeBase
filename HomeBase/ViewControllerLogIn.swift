//
//  ViewControllerLogIn.swift
//  HomeBase
//
//  Created by Ezra Degafe on 12/3/25.
//

import UIKit

class ViewControllerLogIn: UIViewController {

    @IBOutlet weak var inputUsername: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        // Replace rootViewController with MainTabBarController
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let tabBarVC = storyboard.instantiateViewController(identifier: "HomePage") as? UITabBarController {
                if let windowScene = view.window?.windowScene ?? UIApplication.shared.connectedScenes
                    .compactMap({ $0 as? UIWindowScene })
                    .first(where: { $0.activationState == .foregroundActive }),
                   let window = windowScene.windows.first(where: { $0.isKeyWindow }) ?? windowScene.windows.first {
                    window.rootViewController = tabBarVC
                    window.makeKeyAndVisible()
                    // Optional: add a transition animation
                    let transition = CATransition()
                    transition.type = .fade
                    transition.duration = 0.3
                    window.layer.add(transition, forKey: kCATransition)
                }
            }
    }
    
}
