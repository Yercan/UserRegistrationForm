//
//  ViewController.swift
//  AlertProject
//
//  Created by Ercan on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UserNameText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var Password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpClicked(_ sender: Any) {
       /*
        let alert = UIAlertController(title: "ERROR", message: "User no found.", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive) { UIAlertAction in
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true,completion: nil)
        */
            
        if UserNameText.text == "" {
            makeAlert(titleInput: "Hata!", messageInput: "Kullanıcı Adı Boş Bırakılamaz..")
        } else if PasswordText.text == ""{
            makeAlert(titleInput: "Hata!", messageInput: "Şifre Boş Bırakılamaz..")
        } else if PasswordText.text != Password2Text.text {
            makeAlert(titleInput: "Hata!", messageInput: "Şifreler Eşleşmiyor..")
        } else {
            makeAlert(titleInput: "Başarılı", messageInput: "Giriş Başarılı..")
        }
        
        func makeAlert (titleInput: String, messageInput: String){
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.destructive)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        
    }
}

