//
//  QuestionViewController.swift
//  SanCheck
//
//  Created by 노유빈 on 2022/09/14.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var viewModel: QuestionViewModel?

    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        option1Button.configuration?.titleAlignment = .center
        option2Button.configuration?.titleAlignment = .center
        bind(viewModel: viewModel)
        // Do any additional setup after loading the view.
    }
    
    func bind(viewModel: QuestionViewModel?) {
        questionImageView.image = viewModel?.image
        questionLabel.text = viewModel?.question
        option1Button.titleLabel?.text = viewModel?.options[0]
        option1Button.titleLabel?.text = viewModel?.options[1]
    }

}
