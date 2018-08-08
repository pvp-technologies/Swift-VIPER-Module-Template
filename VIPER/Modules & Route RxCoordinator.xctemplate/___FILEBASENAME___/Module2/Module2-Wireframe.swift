//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the BVIPER OpenFleet Xcode Templates.
//

import UIKit
import RxCoordinator

// MARK: - ___VARIABLE_MODULE2UPPER___Wireframe

final class ___VARIABLE_MODULE2UPPER___Wireframe: BaseWireframeProtocol {

    // MARK: Properties

    // TODO: Give route name
    private weak var coordinator: AnyCoordinator<___VARIABLE_ROUTE___Route>

    // MARK: Create module
    
    static func createModule(with parameters: ___VARIABLE_MODULE2UPPER___.Parameters) -> ___VARIABLE_MODULE2UPPER___ViewController {
        
        let view = StoryboardScene.___VARIABLE_MODULE2UPPER___.___VARIABLE_MODULE2___ViewController.instantiate()
        let interactor = ___VARIABLE_MODULE2UPPER___Interactor()
        let wireframe = ___VARIABLE_MODULE2UPPER___Wireframe()
        let presenter = ___VARIABLE_MODULE2UPPER___Presenter(view: view, interactor: interactor, wireframe: wireframe, parameters: parameters)
        
        view.presenter = presenter
        wireframe.coordinator = parameters.coordinator
        
        return view
    }
}

// MARK: - ___VARIABLE_MODULE2UPPER___WireframeProtocol implementation

extension ___VARIABLE_MODULE2UPPER___Wireframe: ___VARIABLE_MODULE2UPPER___WireframeProtocol {
    
    // TODO: Name Route
    func navigate(to option: ___VARIABLE_ROUTE___Route) {
        self.coordinator.transition(to: option).presentation
    }
}
