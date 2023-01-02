//
//  ContentView.swift
//  Shared
//
//  Created by HeresMySwift on 9/16/22.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        TabView {
            CreateMferView()
            .tabItem {
                Label("Create", systemImage: "person.fill.badge.plus")
            }
            GenerateMferView()
            .tabItem {
                Label("Generate", systemImage: "person.3.sequence.fill")
            }
            DaoView()
            .tabItem {
                Label("DAO", systemImage: "building.columns.circle.fill")
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
