//
//  MainScreenViewController.swift
//  HW 2
//
//  Created by Максим Крутинь on 07.11.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func colorChanging(for colorView: UIColor)
}

class MainScreenViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController
        else { return }
        settingsVC.viewColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainScreenViewController: SettingsViewControllerDelegate {
    func colorChanging(for colorView: UIColor) {
        view.backgroundColor = colorView
    }
}
