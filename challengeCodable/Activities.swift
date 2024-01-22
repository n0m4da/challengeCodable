//
//  Activities.swift
//  challengeCodable
//
//  Created by Luis Rivera on 19/01/24.
//

import Foundation

class Activities: ObservableObject {
    @Published var activities = [Activitie]() {
        didSet {
          let encoder = JSONEncoder()

          if let encoded = try? encoder.encode(activities) {
            UserDefaults.standard.set(encoded, forKey: "activities")
          }
        }
      }

      init() {
        if let savedItems = UserDefaults.standard.data(forKey: "activities") {
          if let decodedItems = try? JSONDecoder().decode([Activitie].self, from: savedItems) {
            activities = decodedItems
            return
          }
        }
        activities = []
      }
}
