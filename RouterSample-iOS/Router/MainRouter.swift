//
//  MainRouter.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/02.
//

import UIKit

protocol MainRouting: AnyObject {
    func transition(to destination: MainRouteDestination, type: TransitionType)
}

enum TransitionType {
    case present
    case push
}

final class MainRouter {
    private let container: UIViewController
    
    init(container: UIViewController) {
        self.container = container
    }
    //DI
    static func assembleModules() -> UIViewController {
        let view = MainViewController()
        let mainRouter = MainRouter(container: view)
        
        let presenter = MainPresenter(view: view, mainRouter: mainRouter)
        
        view.presenter = presenter
        
        return view
    }
}

extension MainRouter: MainRouting {
    func transition(to destination: MainRouteDestination, type: TransitionType) {
        let controller: UIViewController
        switch destination {
        case .blue:
            controller = BlueViewController()
        case .red:
            controller = RedViewController()
        case .yellow:
            controller = YellowViewController()
        case .green:
            controller = GreenViewController()
        }
        
        switch type {
        case .present:
            container.present(controller, animated: true)
        case .push:
            container.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
