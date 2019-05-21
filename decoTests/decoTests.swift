//
//  decoTests.swift
//  decoTests
//
//  Created by Souksouvanh Thomas on 19/05/2019.
//  Copyright © 2019 th. All rights reserved.
//

import XCTest
@testable import deco

class decoTests: XCTestCase {

    let converter = Converter()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConversionForOne() {
        let result = converter.convert(2)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
}
