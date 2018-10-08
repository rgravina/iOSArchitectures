import UIKit

class ArchitecturesNavigationViewController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        navigationBar.barStyle = .black
    }
}
