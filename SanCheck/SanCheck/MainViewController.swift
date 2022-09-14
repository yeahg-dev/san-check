//
//  ViewController.swift
//  SanCheck
//
//  Created by Moon Yeji on 2022/09/14.
//

import UIKit

class MainViewController: UIPageViewController  {
    
    private let Question1ViewController = QuestionViewController()
    private let Question2ViewController = QuestionViewController()
    private let Question3ViewController = QuestionViewController()
    private let Question4ViewController = QuestionViewController()
    private let Question5ViewController = QuestionViewController()
    
    private lazy var QuestionViewControllers = [Question1ViewController, Question2ViewController, Question3ViewController, Question4ViewController, Question5ViewController]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        bindViewModel()
        setViewControllers([Question1ViewController], direction: .forward, animated: true)
        
        
    }
    
    private func setupDelegate() {
        dataSource = self
        delegate = self
    }
    
    
    func bindViewModel() {
        Question1ViewController.viewModel = QuestionViewModel(question: QuestionType.one.question)
        Question2ViewController.viewModel = QuestionViewModel(question: QuestionType.two.question)
        Question3ViewController.viewModel = QuestionViewModel(question: QuestionType.three.question)
        Question4ViewController.viewModel = QuestionViewModel(question: QuestionType.four.question)
        Question5ViewController.viewModel = QuestionViewModel(question: QuestionType.five.question)
    }

}

extension MainViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = QuestionViewControllers.firstIndex(of: viewController as! QuestionViewController) else { return nil }
        let previousIndex = index - 1
        if previousIndex < 0 {
            return nil
        }
        return QuestionViewControllers[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = QuestionViewControllers.firstIndex(of: viewController as! QuestionViewController) else { return nil }
        let nextIndex = index + 1
        if nextIndex == QuestionViewControllers.count {
            return nil
        }
        return QuestionViewControllers[nextIndex]
    }
}
