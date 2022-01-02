//
//  MainRouter.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/02.
//

import UIKit

enum MainRouteDestination {
    case blue
    case red
}

protocol MainRouting: AnyObject {
    func transition(to destination: MainRouteDestination)
}

final class MainRouter: MainRouting {
    private let container: UIViewController
    
    init(container: UIViewController) {
        self.container = container
    }
    
    func transition(to destination: MainRouteDestination) {
        let controller: UIViewController
        switch destination {
        case .blue:
            controller = BlueViewController()
        case .red:
            controller = RedViewController()
        }
        container.present(controller, animated: true)
    }
}
