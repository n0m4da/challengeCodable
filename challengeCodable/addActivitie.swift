//
//  addActivitie.swift
//  challengeCodable
//
//  Created by Luis Rivera on 19/01/24.
//

import SwiftUI

struct addActivitie: View {
    
    @ObservedObject var activities : Activities
    @State private var newact = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack {
                TextField("Activitie name", text: $newact)
                    .padding()
                
            }
            .padding()
            .navigationTitle("New Activitie")
            .toolbar{
                Button("save"){
                    let newActiviti = Activitie(nombre: newact)
                    activities.activities.append(newActiviti)
                    dismiss.callAsFunction()
                }
            }
        }
    }
}

#Preview {
 
    addActivitie(activities: Activities())
}
