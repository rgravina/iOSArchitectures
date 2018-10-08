import UIKit

class ModelViewControllerViewController: UIViewController {
    let redButton = UIButton()
    let greenButton = UIButton()
    let blueButton = UIButton()
    let label = UILabel()
    let stackView = UIStackView()

    override func viewDidLoad() {
        setupView()
        setupSubviews()
        setupConstraints()
    }

    private func setupView() {
        title = "Model View Controller"
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: nil)
        navigationController?.navigationItem.leftBarButtonItem?.tintColor = Theme.secondaryColor
        view.backgroundColor = Theme.windowBackgroundColor
    }

    private func setupSubviews() {
        redButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.setTitle("Red", for: .normal)
        redButton.setTitleColor(Theme.listBackgroundColor, for: .normal)
        redButton.backgroundColor = Theme.red

        blueButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.setTitle("Blue", for: .normal)
        blueButton.setTitleColor(Theme.listBackgroundColor, for: .normal)
        blueButton.backgroundColor = Theme.secondaryColor

        greenButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.setTitle("Green", for: .normal)
        greenButton.setTitleColor(Theme.listBackgroundColor, for: .normal)
        greenButton.backgroundColor = Theme.primaryColor

        label.text = "Press a button"
        label.textAlignment = .center
        label.textColor = Theme.lightTextColor
        stackView.backgroundColor = Theme.listBackgroundColor
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 8.0

        stackView.addArrangedSubview(redButton)
        stackView.addArrangedSubview(greenButton)
        stackView.addArrangedSubview(blueButton)
        stackView.addArrangedSubview(label)

        view.addSubview(stackView)
    }

    private func setupConstraints() {
        let margins = view.layoutMarginsGuide

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: margins.topAnchor),
            stackView.leftAnchor.constraint(equalTo: margins.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: margins.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
        ])
    }
}
