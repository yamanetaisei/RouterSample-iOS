//
//  MainNavRouter.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/03.
//

import UIKit

enum MainNavRouteDestination {
    case yellow
    case green
}

protocol MainNavRouting: AnyObject {
    func transition(to destination: MainNavRouteDestination)
}

final class MainNavRouter: MainNavRouting {
    
    private let container: UIViewController
    
    init(container: UIViewController) {
        self.container = container
    }
    
    func transition(to destination: MainNavRouteDestination) {
        let controller: UIViewController
        switch destination {
        case .yellow:
            controller = YellowViewController()
        case .green:
            controller = GreenViewController()
        }
        
        container.navigationController?.pushViewController(controller, animated: true)
    }
}
