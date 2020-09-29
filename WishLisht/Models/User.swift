//
//  User.swift
//  WishLisht
//
//  Created by Taylor Pubins on 9/28/20.
//

import Foundation
import Combine
import Alamofire

class UserStore: ObservableObject {
    @Published var user: User?
    @Published var validInput: Bool = false
    @Published var phoneNumberInput: String = "" {
        didSet {
            
        }
    }
    init(phone: Int) {
        var pubClub: [User] = [User(userid: "", name: "", phone: 0)]
        let jsonBin = JSONBin()
        AF.request(jsonBin.pubClubUsersPath, headers: jsonBin.headers).validate().responseJSON { response in
            pubClub = try! JSONDecoder().decode([User].self, from: response.data!)
            debugPrint(response.value!)
            print("successfully pulled json")
        }
        
        if let match = pubClub.first(where: {$0.phone == phone}) {
            self.user = match
        } else {
            print("no match")
            //try again
        }
    }
}

struct User: Codable {
    var userid: String
    var name: String
    var phone: Int
    
    enum codingKeys: String, CodingKey {
        case userid
        case name
        case phone
    }
}
