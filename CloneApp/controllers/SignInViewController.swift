//
//  SignInViewController.swift
//  CloneApp
//
//  Created by Nuriddin Musojonov on 31/07/21.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
    }

    // MARK: - Function
    func initView(){
        
    }
    func callSignInController(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
                self.navigationController?.pushViewController(vc, animated: true)

    }
    
    
    // MARK: - Action
    
    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callHomeController()
        
    }
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignInController()
        
    }
    
}
