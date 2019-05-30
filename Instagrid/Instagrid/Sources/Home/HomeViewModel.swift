//
//  HomeViewModel.swift
//  Instagrid
//
//  Created by Jeremy Juan on 30/05/2019.
//  Copyright © 2019 Jeremy Juan. All rights reserved.
//

import Foundation

final class HomeViewModel {
    
    enum PictureConfiguration {
        case firstGrid, secondGrid, thirdGrid
    }
    
    // MARK: - Outputs
    
    var titleText: ((String) -> Void)?
    
    var directionText: ((String) -> Void)?
    
    var swipeDirectionText: ((String) -> Void)?
    
    var selectedConfiguration: ((PictureConfiguration) -> Void)?
    
    // MARK: - Inputs
    
    func viewDidLoad() {
        titleText?("Instagrid")
        directionText?("^")
        swipeDirectionText?("Swipe up to share")
        selectedConfiguration?(.firstGrid)
    }
    
    func didPressFirstGrid() {
        selectedConfiguration?(.firstGrid)
    }
    
    func didPressSecondGrid() {
        selectedConfiguration?(.secondGrid)
    }
    
    func didPressThirdGrid() {
        selectedConfiguration?(.thirdGrid)
    }
}
