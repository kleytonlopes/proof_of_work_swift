//
//  ProofOfWorkExample.swift
//  App
//
//  Created by Kleyton Lopes on 11/09/21.
//

import Foundation

struct ProofOfWorkExample {
    
    private(set) var block: Block
    
    init(block: Block) {
        self.block = block
    }
    
    mutating func mineBlock(dificulty: Int){
        let zeros = String(repeating: "0", count: dificulty)
        while (!self.block.hash.starts(with: zeros)) {
            block.nonce += 1
            print("Mine Block Running --> \(block.nonce)")
        }
    }
    
    
}
