//
//  modifyActivitie.swift
//  challengeCodable
//
//  Created by Luis Rivera on 21/01/24.
//

import SwiftUI

struct modifyActivitie: View {
    //MARK: - properties
    @Binding var activitie : Activitie
    
    //MARK: - body
    var body: some View {
        VStack{
            Spacer()
            Text("Modify \(activitie.nombre) amount")
                .fontWeight(.bold)
                .font(.largeTitle)
            Text("Counter: \(activitie.amount)")
            Stepper("", value: $activitie.amount)
                .fixedSize()
                .padding()
                .font(.subheadline)
            Spacer()
        }
    }
}

#Preview {
    var activitie = Activitie(nombre: "TEST", amount: 0)
    return modifyActivitie(activitie: .constant(activitie))
}
