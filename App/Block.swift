//
//  Block.swift
//  App
//
//  Created by Kleyton Lopes on 12/09/21.
//

import Foundation
import CryptoKit

struct Block {
    var nonce: Int = 0
    let previousHash: String
    let timestamp: Int
    let data: Data?
        
    var hash: String {
        let values = "\(String(describing: nonce)) \(previousHash) \(timestamp) \(String(describing: data?.description))"
        let data = Data(values.utf8)
        let hashed = SHA256.hash(data: data)
        return hashed.compactMap { String(format: "%02x", $0) }.joined()
    }
}
