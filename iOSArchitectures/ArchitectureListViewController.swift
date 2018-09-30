import UIKit

class ArchitectureListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "iOS App Architectures"
        setupTableView()
    }

    private func setupTableView() {
        let margins = view.layoutMarginsGuide

        view.backgroundColor = UIColor.black
        tableView.backgroundColor = UIColor.black.lighter(by: 8.0)
        tableView.separatorColor = UIColor.lightGray
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
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.black.lighter(by: 12.0)!
        cell.textLabel?.textColor = UIColor.white
        cell.selectedBackgroundView = UIView()
        cell.selectedBackgroundView?.backgroundColor = UIColor.black.lighter(by: 16.0)!

        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Model View Controller (MVC)"
        case 1:
            cell.textLabel?.text = "MVC With Improvements"
        case 2:
            cell.textLabel?.text = "Model-View-ViewModel (MVVM)"
        case 3:
            cell.textLabel?.text = "VIPER (Clean Architecture)"
        default:
            break;
        }
        return cell
    }
}
