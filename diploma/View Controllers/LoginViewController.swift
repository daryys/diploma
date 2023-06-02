//
//  LoginViewController.swift
//  diploma
//
//  Created by Daria on 28.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Функция подтверждения почты
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    // Функция кнопки входа
    @IBAction func loginButton() {
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            
            let alert = UIAlertController(title: "Ошибка авторизации", message: "Почта или пароль не заполнены.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Продолжить", style: .default, handler: nil))
            self.present(alert, animated: true)
            
        } else if !isValidEmail(emailTextField.text!){
            
            let alert = UIAlertController(title: "Ошибка авторизации", message: "Почта введена неверно.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Продолжить", style: .default, handler: nil))
            self.present(alert, animated: true)
            
        } else {
            // Переход на главную страницу
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
                
    }
    
}

