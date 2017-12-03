//
//  DigitalStickerTests.swift
//  DigitalStickerTests
//
//  Created by Brennan Stehling on 12/3/17.
//  Copyright © 2017 Avinash Dabir. All rights reserved.
//

import XCTest
@testable import DigitalSticker

class DigitalStickerTests: XCTestCase {
    
    func testContentCellSize() {
        // screen width to cell height
        // 375 : 195
        // 320 : 166.4

        let widths: [CGFloat] = [375.0, 320.0]
        let expectedHeights: [CGFloat] = [195.0, 173.0]
        let count = widths.count

        for index in 0..<count {
            let width = widths[index]
            let expectedHeight = expectedHeights[index]
            let size = ContentCell.itemSize(screenWidth: width)
            XCTAssertEqual(size.height, expectedHeight)
        }
    }
    
}
