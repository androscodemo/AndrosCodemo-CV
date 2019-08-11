//
//  HomeModuleTest.swift
//  ACTests
//
//  Created by Andros Codemo on 8/11/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import XCTest
@testable import AndrosCodemoCV

class HomeModuleTest: XCTestCase {

    var sut: HViewController!
    
    override func setUp() {
        sut = HModuleBuilder().build() as? HViewController
    }

    override func tearDown() {
        sut = nil
    }

    func testContentSize() {
        XCTAssert(sut.tableView.numberOfRows(inSection: 0) == 6)
    }

}
