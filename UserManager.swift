//
//  UserManager.swift
//  
//
//  Created by Tharik anver  on 25/06/26.
//

class UserManager {

    func getUser(at index: Int) -> String {
        let users = ["John", "Alice"]

        guard users.indices.contains(index) else {
            return ""
        }

        return users[index]
    }
}
