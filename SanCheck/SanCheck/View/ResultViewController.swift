//
//  ResultViewController.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: "paperBackgroundImage")
        // Do any additional setup after loading the view.
    }

}
