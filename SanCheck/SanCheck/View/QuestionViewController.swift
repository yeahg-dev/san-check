//
//  QuestionViewController.swift
//  SanCheck
//
//  Created by 노유빈 on 2022/09/14.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var viewModel: QuestionViewModel?

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: "paperBackgroundImage")
        bind(viewModel: viewModel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        bind(viewModel: viewModel)
        configureButtons()
    }
    
    private func configureButtons() {
        option1Button.layer.cornerRadius = 10
        option1Button.layer.shadowColor = UIColor.orange.cgColor
        option1Button.layer.shadowRadius = 10
        option1Button.layer.shadowOffset = CGSize(width: 5, height: 5)
        option1Button.layer.shadowOpacity = 0.5
        option1Button.layer.masksToBounds = false
        option2Button.layer.cornerRadius = 10
        option2Button.layer.shadowColor = UIColor.orange.cgColor
        option2Button.layer.shadowRadius = 10
        option2Button.layer.shadowOffset = CGSize(width: 5, height: 5)
        option2Button.layer.shadowOpacity = 0.5
        option2Button.layer.masksToBounds = false
    }
    
    func bind(viewModel: QuestionViewModel?) {
        questionImageView.image = viewModel?.image
        questionLabel.text = viewModel?.question
        option1Button.titleLabel?.text = viewModel?.options[0]
        option2Button.titleLabel?.text = viewModel?.options[1]
    }

}
