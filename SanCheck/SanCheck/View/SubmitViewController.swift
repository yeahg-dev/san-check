//
//  SubmitViewController.swift
//  SanCheck
//
//  Created by 노유빈 on 2022/09/14.
//

import UIKit

class SubmitViewController: UIViewController {
    
    @IBOutlet weak private var backgroundImageView: UIImageView!
    @IBOutlet weak private var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: "paperBackgroundImage")
        configureCheckButton()
    }
    
    private func configureCheckButton() {
        checkButton.titleLabel?.textAlignment = .center
        checkButton.layer.cornerRadius = 10
        checkButton.layer.shadowColor = UIColor.orange.cgColor
        checkButton.layer.shadowRadius = 10
        checkButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        checkButton.layer.shadowOpacity = 0.5
        checkButton.layer.masksToBounds = false
    }
    

}
