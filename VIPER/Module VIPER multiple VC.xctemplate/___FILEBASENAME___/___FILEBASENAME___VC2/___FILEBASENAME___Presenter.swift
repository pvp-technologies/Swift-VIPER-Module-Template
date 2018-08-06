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

// MARK: - ___VARIABLE_moduleName___Presenter

final class ___VARIABLE_moduleName___Presenter {

    // MARK: Properties

    weak private var view: ___VARIABLE_moduleName___ViewProtocol?
    var interactor: ___VARIABLE_moduleName___InteractorProtocol?
    private let wireframe: ___VARIABLE_moduleName___WireframeProtocol
    private let parameters: ___VARIABLE_moduleName___.Parameters
    
    // MARK: Initializers

    init(interface: ___VARIABLE_productName:identifier___ViewProtocol, interactor: ___VARIABLE_productName:identifier___InteractorProtocol?, wireframe: ___VARIABLE_productName:identifier___WireframeProtocol, parameters: ___VARIABLE_moduleName___.Parameters) {
        self.view = interface
        self.interactor = interactor
        self.wireframe = wireframe
        self.parameters = parameters
    }
}

// MARK: - ___VARIABLE_moduleName___PresenterViewProtocol extensions

extension ___VARIABLE_moduleName___PresenterViewProtocol: ___VARIABLE_moduleName___PresenterViewProtocol {

}

// MARK: - ___VARIABLE_moduleName___InteractorProtocol extensions

extension ___VARIABLE_moduleName___PresenterInteractorProtocol: ___VARIABLE_moduleName___PresenterInteractorProtocol {
    
}