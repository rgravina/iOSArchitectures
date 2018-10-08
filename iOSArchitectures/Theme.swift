import UIKit

struct Theme {
    static var primaryColor: UIColor {
        return UIColor(rgba: "#50E3C2")
    }

    static var secondaryColor: UIColor {
        return UIColor(rgba: "#75caff")
    }

    static var windowBackgroundColor: UIColor {
        return UIColor.black
    }

    static var backgroundColor: UIColor {
        return UIColor.black.lighter(by: 8.0)!
    }

    static var separatorColor: UIColor {
        return UIColor.lightGray
    }

}
