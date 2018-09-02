import XCTest
@testable import iOSArchitectures

class iOSArchitecturesTests: XCTestCase {
    func testHasCellForMVC() {
        let controller = ArchitectureListViewController()
        let path = IndexPath(item: 0, section: 0)
        
        let cell = controller.tableView(controller.tableView, cellForRowAt: path)
        
        XCTAssertEqual(cell.textLabel?.text, "Model View Controller")
    }
}
