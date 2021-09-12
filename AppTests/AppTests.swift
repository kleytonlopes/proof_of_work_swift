//
//  AppTests.swift
//  AppTests
//
//  Created by Kleyton Lopes on 11/09/21.
//

import XCTest
@testable import App

class AppTests: XCTestCase {

    func test_mine_block_dificulty_1(){
        var sut = createSut()
        sut.mineBlock(dificulty: 1)
        XCTAssertEqual(sut.block.hash, "036ce450ab9b6c5da77a8a61810f57195626c59720c92e4f0c0b7d6337c1a79b")
        XCTAssertEqual(sut.block.nonce, 10)
    }

    func test_mine_block_dificulty_2(){
        var sut = createSut()
        sut.mineBlock(dificulty: 2)
        XCTAssertEqual(sut.block.hash, "00cc88b4e2373ebd388b71ec4361d39b7725a02923b0788ded85007b8ed07d19")
        XCTAssertEqual(sut.block.nonce, 408)

    }

    func test_mine_block_dificulty_4(){
        var sut = createSut()
        sut.mineBlock(dificulty: 4)
        XCTAssertEqual(sut.block.hash, "0000dc7c2ad88b89f7284f0197cb56476a07c6e02d0c167c74a24b5fdee3a624")
        XCTAssertEqual(sut.block.nonce, 94760)

    }
}

extension AppTests{
    func createSut() -> ProofOfWorkExample {
        return ProofOfWorkExample(block: createBlock())
    }
    func createBlock() -> Block {
        let data_string = "any_data"
        let timestamp = 1631414027
        return Block(nonce: 0, previousHash: "any_hash", timestamp: Int(timestamp), data: Data(data_string.utf8))
    }
}
