//
//  SendsayEvent.swift
//  sendsay
//

import Foundation
import SendsaySDK

class SendsaySSEC {
    let type: String
    let data: [String:JSONConvertible]

    init(_ data: [String:Any?]) throws {
        self.type = try data.getRequired("type")
        if let data = data["data"] as? [String:Any] {
            self.data = try data.mapValues({ (value: Any) -> JSONConvertible in
                try JsonDataParser.parseValue(value: value)
            })
        } else {
            self.data = [:]
        }
    }
}
