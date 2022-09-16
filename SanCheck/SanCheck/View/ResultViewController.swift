//
//  ResultViewController.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var mountainImageView: UIImageView!
    @IBOutlet weak var mountainLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    var viewModel: MountainResultViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: "paperBackgroundImage")
        bind(viewModel: viewModel)
        
    }
    
    func bind(viewModel: MountainResultViewModel?) {
        mountainImageView.image = viewModel?.image
        mountainLabel.text = viewModel?.mountain
        quoteLabel.text = viewModel?.quote
    }
}
