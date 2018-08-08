//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Stephan Yannick @YannickSteph
//

import Foundation
import RxCoordinator

// MARK: - ___VARIABLE_ROUTE___Route

enum ___VARIABLE_ROUTE___Route: Route {
    case ___VARIABLE_MODULE1___
    case ___VARIABLE_MODULE2___
    
    func prepareTransition(coordinator: AnyCoordinator<___VARIABLE_ROUTE___Route>) -> NavigationTransition {
        switch self {
        case .___VARIABLE_MODULE1___:
            /*
             case test(let outputParameters)
             let param = Example.Parameters(parameters: outputParameters)
             let vc = ExampleWireframe.createModule(with: param, coordinator: coordinator)
             return .push(vc)
            */
            return .dismiss()
        case .___VARIABLE_MODULE2___:
            return .dismiss()
        }
    }
}