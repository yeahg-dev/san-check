//
//  ViewController.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let Question1ViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
    private let Question2ViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
    private let Question3ViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
    private let Question4ViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
    private let Question5ViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController
    
    private let SubmitViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SubmitViewController") as? SubmitViewController
    
    private let pageViewController = UIPageViewController(
        transitionStyle: .pageCurl,
        navigationOrientation: .horizontal)
    
    var currentIdx:Int = 0
    var chooseIdx = 0
    
    private lazy var QuestionViewControllers = [Question1ViewController, Question2ViewController, Question3ViewController, Question4ViewController, Question5ViewController, SubmitViewController]
    
    @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
        pageViewController.setViewControllers([Question1ViewController] as? [UIViewController], direction: .forward, animated: true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        
        pageViewController.setViewControllers([Question1ViewController] as? [UIViewController], direction: .forward, animated: true)
        self.addChild(pageViewController)
        self.view.addSubview(pageViewController.view)
        view.translatesAutoresizingMaskIntoConstraints = false
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: pageViewController.view.leadingAnchor),
            view.topAnchor.constraint(equalTo: pageViewController.view.topAnchor),
            view.trailingAnchor.constraint(equalTo: pageViewController.view.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: pageViewController.view.bottomAnchor)
        ])
        bindViewModel()
        
        view.backgroundColor = .systemPink
    }
    
    private func setupDelegate() {
        pageViewController.dataSource = self
        pageViewController.delegate = self
    }
    
    func bindViewModel() {
        Question1ViewController?.viewModel = QuestionViewModel(question: QuestionType.one.question)
        Question1ViewController?.bind(viewModel: QuestionViewModel(question: QuestionType.one.question))
        Question2ViewController?.viewModel = QuestionViewModel(question: QuestionType.two.question)
        Question3ViewController?.viewModel = QuestionViewModel(question: QuestionType.three.question)
        Question4ViewController?.viewModel = QuestionViewModel(question: QuestionType.four.question)
        Question5ViewController?.viewModel = QuestionViewModel(question: QuestionType.five.question)
    }
    
}

extension MainViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = QuestionViewControllers.firstIndex(of: viewController) else { return nil }
        let previousIndex = index - 1
        if previousIndex < 0 {
            return nil
        }
        return QuestionViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = QuestionViewControllers.firstIndex(of: viewController) else { return nil }
        let nextIndex = index + 1
        if nextIndex == QuestionViewControllers.count {
            return nil
        }
        return QuestionViewControllers[nextIndex]
    }
    
}
