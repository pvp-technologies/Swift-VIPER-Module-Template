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

// MARK: - ___VARIABLE_MODULE2UPPER___Presenter

final class ___VARIABLE_MODULE2UPPER___Presenter {

    // MARK: Properties

    private weak var view: ___VARIABLE_MODULE2UPPER___ViewProtocol?
    private let interactor: ___VARIABLE_MODULE2UPPER___InteractorProtocol
    private let wireframe: ___VARIABLE_MODULE2UPPER___WireframeProtocol
    private let parameters: ___VARIABLE_MODULE2UPPER___.Parameters
    
    // MARK: Initializers
    
    init(view: ___VARIABLE_MODULE2UPPER___ViewProtocol, interactor: ___VARIABLE_MODULE2UPPER___InteractorProtocol, wireframe: ___VARIABLE_MODULE2UPPER___WireframeProtocol, parameters: ___VARIABLE_MODULE2UPPER___.Parameters) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
        self.parameters = parameters
    }
}

// MARK: - ___VARIABLE_MODULE2UPPER___PresenterProtocol extensions

extension ___VARIABLE_MODULE2UPPER___Presenter: ___VARIABLE_MODULE2UPPER___PresenterProtocol {

}
