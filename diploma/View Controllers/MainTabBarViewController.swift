//
//  MainTabBarViewController.swift
//  diploma
//
//  Created by Daria on 02.06.2023.
//

import Foundation
import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }

    private func generateTabBar(){
        viewControllers = [
            generateVC(viewController: HomeViewController(), title: "Главная", image: UIImage(systemName: "house.fill")),
            generateVC(viewController: DoctorsViewController(), title: "Записаться", image: UIImage(systemName: "calendar")),
            generateVC(viewController: UserViewController(), title: "Медкарта", image: UIImage(systemName: "person.crop.square.fill"))
        ]
    }

    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }

}

