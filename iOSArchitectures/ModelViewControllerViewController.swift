import UIKit

class ModelViewControllerViewController : UIViewController {
    override func viewDidLoad() {
        title = "Model View Controller"
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: nil)
        navigationController?.navigationItem.leftBarButtonItem?.tintColor = Theme.secondaryColor
    }
}
