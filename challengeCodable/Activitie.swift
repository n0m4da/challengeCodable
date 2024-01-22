//
//  Activitie.swift
//  challengeCodable
//
//  Created by Luis Rivera on 19/01/24.
//

import Foundation


struct Activitie: Identifiable, Codable {
    var id = UUID()
    let nombre : String
    var amount: Int = 0
}
