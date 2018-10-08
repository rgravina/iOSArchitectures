import UIKit

class ArchitectureListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView()

    enum Section: Int {
        case OO, Other
        static let count = 2
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "iOS App Architectures"
        setupTableView()
    }

    private func setupTableView() {
        let margins = view.layoutMarginsGuide

        view.backgroundColor = Theme.windowBackgroundColor
        tableView.backgroundColor = Theme.backgroundColor
        tableView.separatorColor = Theme.separatorColor
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: margins.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: margins.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: margins.rightAnchor)
        ])
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.OO.rawValue:
            return 3
        case Section.Other.rawValue:
            return 1
        default:
            return 0
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return Section.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.black.lighter(by: 12.0)!
        cell.textLabel?.textColor = UIColor.white
        cell.selectedBackgroundView = UIView()
        cell.selectedBackgroundView?.backgroundColor = UIColor.black.lighter(by: 16.0)!

        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Model View Controller (MVC)"
            case 1:
                cell.textLabel?.text = "MVC With Improvements"
            case 2:
                cell.textLabel?.text = "VIPER (Clean Architecture)"
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "RxSwift"
            default:
                break
            }
        default:
            break
        }
        return cell
    }

    internal func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "OO Patterns"
        case 1:
            return "Other Patterns"
        default:
            return ""
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case Section.OO.rawValue:
            switch indexPath.row {
            case 0:
                navigationController?.pushViewController(ModelViewControllerViewController(), animated: true)
                break
            default:
                break
            }
        default:
            break
        }
    }
}
