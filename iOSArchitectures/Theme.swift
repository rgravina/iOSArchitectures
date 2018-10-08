import UIKit

struct Theme {
    static var primaryColor: UIColor {
        return UIColor(rgba: "#50E3C2")
    }

    static var secondaryColor: UIColor {
        return UIColor(rgba: "#75caff")
    }

    static var windowBackgroundColor: UIColor {
        return UIColor.black.lighter(by: 2.0)!
    }

    static var listBackgroundColor: UIColor {
        return UIColor.black.lighter(by: 8.0)!
    }

    static var separatorColor: UIColor {
        return UIColor.lightGray
    }

    static var textColor: UIColor {
        return UIColor.lightGray
    }

    static var lightTextColor: UIColor {
        return UIColor.white
    }

    static var red: UIColor {
        return UIColor(rgba: "#FF8D8D")
    }
}
