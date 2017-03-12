//
//  StoreViewController.swift
//  Fitness Friends
//
//  Created by Jacqueline Oh on 5/23/16.
//  Copyright © 2016 Jacqueline Oh. All rights reserved.
//

import UIKit

class StoreViewController: UIPageViewController {
    
       fileprivate(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newStoreViewController("A1"),
                self.newStoreViewController("B"),
                self.newStoreViewController("C"),
                self.newStoreViewController("D")]
    }()
    
    fileprivate func newStoreViewController(_ letter: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "Store\(letter)ViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
}

// MARK: UIPageViewControllerDataSource

extension StoreViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
}

