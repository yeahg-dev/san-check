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
    var tester: Tester?
    
    weak var delegate: SubmitViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image = UIImage(named: "paperBackgroundImage")
        configureCheckButton()
    }
    
    @IBAction func showResult(_ sender: Any) {
        let result: String = (delegate?.getSelectedOption().compactMap{ $0?.value }.reduce("") { String($0) + String($1) })!
        
        guard let testResult = tester?.test(reducedOptionValue: result) else {
            return
        }
        let viewModel = MountainResultViewModel(mountainResult: testResult)
        guard let resultViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else {
            return
        }
        resultViewController.viewModel = viewModel
        resultViewController.modalPresentationStyle = .popover
        present(resultViewController, animated: true)
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

protocol SubmitViewControllerDelegate: AnyObject {
    
    func getSelectedOption() -> [Option?]
}
