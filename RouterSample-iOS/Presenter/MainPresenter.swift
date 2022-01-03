//
//  MainPresenter.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/03.
//

import Foundation

protocol MainPresentation: AnyObject {
    func present(to destination: MainRouteDestination)
    func push(to destination: MainRouteDestination)
}

final class MainPresenter: MainPresentation{
    private weak var view: MainViewController?
    private let mainRouter: MainRouter
    
    init(view: MainViewController,
         mainRouter: MainRouter) {
        self.view = view
        self.mainRouter = mainRouter
    }
    
    func present(to destination: MainRouteDestination) {
        mainRouter.transition(to: destination, type: .present)
    }
    
    func push(to destination: MainRouteDestination) {
        mainRouter.transition(to: destination, type: .push)
    }
}
