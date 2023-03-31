//
//  Profil.swift
//  Zabava
//
//  Created by Lion on 21/03/2023.
//

import Foundation

class Profil: ObservableObject {
   
    let name: String
    let myEvent: [Event]
   @Published var favoriteEvent: [Event]
    
    init(name: String, myEvent: [Event], favoriteEvent: [Event]) {
        self.name = name
        self.myEvent = myEvent
        self.favoriteEvent = favoriteEvent
    }
}
    var sophie = Profil(name: "Sophie", myEvent: evenement, favoriteEvent: favoriteEventArray)
