//
//  User.swift
//  Social Betting
//
//  Created by Great Fire on 12/27/16.
//  Copyright © 2016 Great Fire. All rights reserved.
//

import Foundation
import Firebase

struct User {
    //let key: String
    //let profileImageUrl: String
    //let bet: String
    //let likes: String
    let friendsList: [String]
    let fullName: String
    let fName: String
    let lName: String
    let username: String
   // let profilePic: UIImageView
    //let userID: String
    
    
    init(friendsList: [String], fullName: String, fName: String, lName: String, username:String) {
        self.friendsList = friendsList
        self.fullName = fullName
        self.fName = fName
        self.lName = lName
        self.username = username
        //self.profilePic = profilePic
        //self.userID = userID
    }
    
    //    init(snapshot: FIRDataSnapshot) {
    //        key = snapshot.key
    //        let snapshotValue = snapshot.value as! [String: AnyObject]
    //        postID = snapshotValue["postID"] as! Int
    //        addedByUser = snapshotValue["addedByUser"] as! String
    //        completed = snapshotValue["completed"] as! Bool
    //        ref = snapshot.ref
    //    }
    
    func toAnyObject() -> Any {
        return [
            "firstName": fName,
            "lastName": lName,
            "fullName": fullName,
            "friendsList:": friendsList,
            "username": username
        ]
    }
}
