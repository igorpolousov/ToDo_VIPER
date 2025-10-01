//
//  ToDo_VIPERTests.swift
//  ToDo_VIPERTests
//
//  Created by Igor Polousov on 01.10.2025.
//

import XCTest
@testable import ToDo_VIPER

final class ToDo_VIPERTests: XCTestCase {
    
    // Тестирование ToDo struct for JSON
    func testToDoDecoderDecodesJSON() throws {
        let decoder = JSONDecoder()
        let decoded = try decoder.decode(ToDo.self, from: testTodoData)
        
        XCTAssertEqual(decoded.userId, 152)
        XCTAssertEqual(decoded.id, 1)
        XCTAssertEqual(decoded.completed, false)
        XCTAssertEqual(decoded.todo, "Do something nice for someone you care about")
    }
    
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

 
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
