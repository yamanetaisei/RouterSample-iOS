//
//  MainPresenter.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/03.
//

import Foundation

enum PresentDestination {
    case blue
    case red
}

protocol MainPresentation: AnyObject {
    func present(to destination: MainRouteDestination)
    func push(to destination: MainNavRouteDestination)
}

final class MainPresenter: MainPresentation{
    private weak var view: MainViewController?
    private let mainRouter: MainRouter
    private let mainNavRouter: MainNavRouter
    
    init(view: MainViewController,
         mainRouter: MainRouter,
         mainNavRouter: MainNavRouter) {
        self.view = view
        self.mainRouter = mainRouter
        self.mainNavRouter = mainNavRouter
    }
    
    func present(to destination: MainRouteDestination) {
        mainRouter.transition(to: destination)
    }
    
    func push(to destination: MainNavRouteDestination) {
        mainNavRouter.transition(to: destination)
    }
}
