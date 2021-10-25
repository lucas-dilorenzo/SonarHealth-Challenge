//
//  ViewController.swift
//  testSH
//
//  Created by Lucas Di Lorenzo on 25/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var signInBtn: UIButton!
    
    private var emailOk = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTxtField?.delegate = self
        self.errorLbl.isHidden = true
        self.emailTxtField.addBottomBorder(color: .gray)
        self.passTxtField.addBottomBorder(color: .gray)
        self.disableOrEnable(false)
        self.signInBtn.layer.cornerRadius = 25
        self.signInBtn.layer.masksToBounds = true
    }
    
    private func disableOrEnable(_ boolValue:Bool) {
        self.signInBtn?.isUserInteractionEnabled = boolValue
        self.signInBtn?.alpha = boolValue ? 1 : 0.5
    }
    
    private func warningEmail(_ boolValue:Bool){
        if boolValue{
            self.emailTxtField.addBottomBorder(color: .gray)
            self.errorLbl.isHidden = true}
        else{
            self.errorLbl.text = "Please submit a valid email"
            emailTxtField.addBottomBorder(color: .red)
            self.errorLbl.isHidden = false
        }
    }

}
extension UITextField {
    func addBottomBorder(color:UIColor){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = color.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
extension ViewController: UITextFieldDelegate {
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let text = ((textField.text ?? "") as NSString).replacingCharacters(in: range, with: string)
            self.emailOk = !text.isEmpty && text.isValidEmail
            self.disableOrEnable(self.emailOk)
            self.warningEmail(self.emailOk)
            
            return true
        }
}

