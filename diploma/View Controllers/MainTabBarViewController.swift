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
        self.selectedIndex = 1;

    }

    private func generateTabBar(){
        viewControllers = [
            generateVC(viewController: DoctorsViewController(), title: "Записаться", image: UIImage(systemName: "calendar")),
            generateVC(viewController: HomeViewController(), title: "Главная", image: UIImage(systemName: "house.fill")),
            generateVC(viewController: UserViewController(), title: "Медкарта", image: UIImage(systemName: "person.crop.square.fill"))
        ]
    }

    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
//    private func tabBarNavigation(didSelect item: UITabBarItem) {
//        if(item.tag == 1) {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//            vc.modalPresentationStyle = .fullScreen
//            present(vc, animated: true, completion: nil)
//
//        } else if(item.tag == 2) {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "DoctorsViewController") as! DoctorsViewController
//            vc.modalPresentationStyle = .fullScreen
//            present(vc, animated: true, completion: nil)
//
//        } else if(item.tag == 3) {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
//            vc.modalPresentationStyle = .fullScreen
//            present(vc, animated: true, completion: nil)
//        }
//    }
}

