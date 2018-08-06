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

// MARK: - View protocol

protocol ___VARIABLE_productName:identifier___ViewProtocol: class {
    
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
}

// MARK: - Presenter view protocol

protocol ___VARIABLE_productName:identifier___PresenterViewProtocol: class {
    
}

// MARK: - Presenter interactor protocol

protocol ___VARIABLE_productName:identifier___PresenterInteractorProtocol: class {
    
}

// MARK: - Interactor protocol

protocol ___VARIABLE_productName:identifier___InteractorProtocol: class {
    
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
}

// MARK: - Wireframe protocol

protocol ___VARIABLE_productName:identifier___WireframeProtocol: class {
    
    func navigate(to option: ___VARIABLE_moduleName___.NavigationOption)
}





