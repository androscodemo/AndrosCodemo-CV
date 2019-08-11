//
//  PastExperienceModuleTest.swift
//  ACTests
//
//  Created by Andros Codemo on 8/11/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import XCTest
@testable import AndrosCodemoCV

class PastExperienceModuleTest: XCTestCase {

    var sut: PEViewController!
    
    override func setUp() {
        sut = PEBuilder().build(withTitle: "") as? PEViewController
    }

    override func tearDown() {
        sut = nil
    }
    
    func testContentSize() {
        XCTAssert(sut.tableView.numberOfRows(inSection: 0) == 4)
    }

}
