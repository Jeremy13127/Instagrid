//
//  ViewController.swift
//  Instagrid
//
//  Created by Jeremy Juan on 30/05/2019.
//  Copyright © 2019 Jeremy Juan. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel! {
        didSet {
            // Configure font, color etc..
            titleLabel.textColor = .blue
        }
    }
    
    @IBOutlet weak var directionText: UILabel!
    
    @IBOutlet weak var swipeDirectionText: UILabel!
    
    @IBOutlet weak var gridContainer: UIView!
    
    // MARK: - Private properties
    
    private lazy var viewModel = HomeViewModel()
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind(to: viewModel)
        
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: HomeViewModel) {
        viewModel.titleText = { [weak self] title in
            self?.titleLabel.text = title
        }
        
        viewModel.directionText = { [weak self] direction in
            self?.directionText.text = direction
        }
        
        viewModel.swipeDirectionText = { [weak self] swipe in
            self?.swipeDirectionText.text = swipe
        }
        
        viewModel.selectedConfiguration = { [weak self] configuration in
            let view = Grid()
            guard let self = self else { return }
            switch configuration {
            case .firstGrid:
                view.frame = self.gridContainer.bounds
                self.gridContainer.addSubview(view)
                view.configure(with: .red)
            case .secondGrid:
                view.frame = self.gridContainer.bounds
                self.gridContainer.addSubview(view)
                view.configure(with: .yellow)
            case .thirdGrid:
                view.frame = self.gridContainer.bounds
                self.gridContainer.addSubview(view)
                view.configure(with: .green)
            }
        }
    }
    
    // MARK: - Actions
    
    @IBAction func didSelectFirstGrid(_ sender: UIButton) {
        viewModel.didPressFirstGrid()
    }
    
    @IBAction func didSelectSecondGrid(_ sender: UIButton) {
        viewModel.didPressSecondGrid()
    }
    
    @IBAction func didSelectThirdGrid(_ sender: UIButton) {
        viewModel.didPressThirdGrid()
    }
    
}
