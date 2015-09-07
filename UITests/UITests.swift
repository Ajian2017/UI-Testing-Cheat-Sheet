//
//  UITests.swift
//  UITests
//
//  Created by Joe Masilotti on 9/7/15.
//  Copyright © 2015 Masilotti.com. All rights reserved.
//

import XCTest

class UI_Testing_Cheat_SheetUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    func testElementExists() {
        XCTAssert(app.buttons["Bump, Set..."].exists)
    }

    func testTappingAButton() {
        XCTAssertFalse(app.staticTexts["Spike!"].exists)

        app.buttons["Bump, Set..."].tap()
        XCTAssert(app.staticTexts["Spike!"].exists)
    }
}
