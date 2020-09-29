//
//  JSONBin.swift
//  WishLisht
//
//  Created by Taylor Pubins on 9/28/20.
//

import Foundation
import Alamofire

struct JSONBin {
    let root = "https://api.jsonbin.io/"
    let binPath = "b/"
    let version = "/latest"
    let usersBin = "5f722e897243cd7e8245a6a1"
    let wishlishtCollection = "5f722bec65b18913fc557caf"
    let secretKey = "$2b$10$UDqy5qkoS6FwFO5s2wu5nODnHxEcs43GZ7NHkoMV/7n0s.hFZiNAa"
    var headers: HTTPHeaders {
        [
            "secret-key": secretKey
        ]
    }
    var pubClubUsersPath: String {
        return root + binPath + usersBin
    }
}
