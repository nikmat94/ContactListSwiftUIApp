//
//  DataManager.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var names = [
                "Steven", "John", "Tom",
                "Jack", "Jane", "Alex",
                 "Nick", "Bruce", "Carl",
                 "Ted"
                ]
    
    var secondNames = [
                       "Butler", "Black", "Smith",
                       "Robertson", "Williams", "Jankin",
                       "Dow", "Pennyworth", "Isaacson",
                       "Mupphy"
                      ]
    
    var phoneNumbers = [
                        "139357837", "953957108", "439420850",
                        "649467559", "069648369", "746374439",
                        "043769547", "438604759", "048754867",
                        "175439760"
                        ]
    
    var emails = [
                  "sdkf@mail.com","2374278@mail.com", "358@mail.com",
                  "fhey@mail.com", "47fh@mail.com", "ffdsj@mail.com",
                  "stfjk@mail.com", "439@mail.com", "edvkv@mail.com",
                  "fvkjb@mail.com"
                 ]
    
    var id = [1,2,3,4,5,6,7,8,9,10]
    
    private init() {}

}
