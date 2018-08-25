
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow()
        if let window = window {
            window.rootViewController = ArchitectureListViewController()
            window.makeKeyAndVisible()
        }
        return true
    }
}

