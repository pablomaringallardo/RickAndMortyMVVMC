//
//
//  RickAndMortyMVVMC
//
//  Created by Enrique P. Ortiz.
//  Linkedin: https://www.linkedin.com/in/enrique-poyato-ortiz-%EF%A3%BF-7447b3200/
//  Copyright © 2024 Enrique P. Ortiz. All rights reserved.
//


import Foundation

extension DecodingError {
    var detailErrorDescription: String {
        switch self {
        case let .typeMismatch(type, context):
            return "Type \(type) mismatch: \(context.debugDescription)"
        case let .valueNotFound(type, context):
            return "Type \(type) value not found: \(context.debugDescription)"
        case let .keyNotFound(codingKey, context):
            return "Key \(codingKey) not found: \(context.debugDescription)"
        case let .dataCorrupted(context):
            return "Data corrupted: \(context.debugDescription)"
        @unknown default:
            return "Unknown case"
        }
    }
}
