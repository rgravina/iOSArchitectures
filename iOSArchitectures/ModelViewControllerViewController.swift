import UIKit

class ModelViewControllerViewController: UIViewController {
    let redButton = UIButton()
    let greenButton = UIButton()
    let blueButton = UIButton()
    let label = UILabel()

    var lastTapped: ButtonColor?

    override func viewDidLoad() {
        setupView()
        setupSubviews()
    }

    private func setupView() {
        title = "Model View Controller"
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: nil)
        navigationController?.navigationItem.leftBarButtonItem?.tintColor = Theme.secondaryColor
        view.backgroundColor = Theme.windowBackgroundColor
    }

    private func setupSubviews() {
        redButton.setTitle("Red", for: .normal)
        redButton.setTitleColor(Theme.listBackgroundColor, for: .normal)
        redButton.backgroundColor = Theme.red
        redButton.addTarget(self, action: #selector(tappedRed), for: .touchUpInside)

        blueButton.setTitle("Blue", for: .normal)
        blueButton.setTitleColor(Theme.listBackgroundColor, for: .normal)
        blueButton.backgroundColor = Theme.secondaryColor
        blueButton.addTarget(self, action: #selector(tappedBlue), for: .touchUpInside)

        greenButton.setTitle("Green", for: .normal)
        greenButton.setTitleColor(Theme.listBackgroundColor, for: .normal)
        greenButton.backgroundColor = Theme.primaryColor
        greenButton.addTarget(self, action: #selector(tappedGreen), for: .touchUpInside)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updatedModel),
            name: .tapped,
            object: lastTapped
        )

        label.text = "Press a button"
        label.textAlignment = .center
        label.textColor = Theme.lightTextColor

        let stackView = UIStackView()
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
        setupConstraints(stackView: stackView)
    }

    private func setupConstraints(stackView: UIStackView) {
        let margins = view.layoutMarginsGuide

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: margins.topAnchor),
            stackView.leftAnchor.constraint(equalTo: margins.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: margins.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
        ])
    }

    @objc func tappedRed() {
        lastTapped = .red
        NotificationCenter.default.post(name: .tapped, object: nil, userInfo: nil)
    }

    @objc func tappedGreen() {
        lastTapped = .green
        NotificationCenter.default.post(name: .tapped, object: nil, userInfo: nil)
    }

    @objc func tappedBlue() {
        lastTapped = .blue
        NotificationCenter.default.post(name: .tapped, object: nil, userInfo: nil)
    }

    @objc func updatedModel() {
        if (lastTapped == nil) {
            label.text = "Press a button"
        } else {
            switch (lastTapped!) {
            case .red:
                label.text = "Red was pressed"
                break
            case .green:
                label.text = "Green was pressed"
                break
            case .blue:
                label.text = "Blue was pressed"
                break
            }
        }
    }
}
