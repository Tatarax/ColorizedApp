//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Dinar on 24.01.2023.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColorView (colorRedView: CGFloat, colorGreenView: CGFloat, colorBlue: CGFloat, alpha: CGFloat)
}

class MainViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let SettingVC = navigationVC.topViewController as? SettingViewController else { return }
        SettingVC.delegate = self
    }
    
}

//MARK: ProtocolSettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColorView(colorRedView: CGFloat, colorGreenView: CGFloat, colorBlue: CGFloat, alpha: CGFloat) {
        mainView.backgroundColor = UIColor(displayP3Red: CGFloat(colorRedView), green: CGFloat(colorGreenView), blue: CGFloat(colorBlue), alpha: CGFloat(1))
        
    }
    
        
    
    
}
