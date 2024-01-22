//
//  ContentView.swift
//  challengeCodable
//
//  Created by Luis Rivera on 19/01/24.
//

import SwiftUI
import Foundation






struct ContentView: View {
    
    //MARK: - PROPERTIES
   
    @StateObject  var activities = Activities()
    @State private var newActivitie : String = ""
    @State private var showNewActivitie: Bool = false

    //MARK: - BODY
    var body: some View {
        ZStack {
          
            NavigationStack{
          
                VStack {
                   
                    List {
                        ForEach(activities.activities.indices, id: \.self){ item in
                            
                            NavigationLink(destination: modifyActivitie(activitie: $activities.activities[item])){
                                Text(activities.activities[item].nombre)
                            }
                           
                        }
                    }
                    .toolbar{
                        Button("Add"){
                            showNewActivitie.toggle()
                        }
                }
                }
            }.sheet(isPresented: $showNewActivitie){
                addActivitie(activities: activities)
                    .background(.red,ignoresSafeAreaEdges: .all)
                
                
            }
        }
     
    }
}

#Preview {

    ContentView()
}
