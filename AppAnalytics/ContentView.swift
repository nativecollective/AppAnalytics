//
//  ContentView.swift
//  AppAnalytics
//
//  Created by krzysp on 05/09/2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            SidebarView()
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
        .frame(minWidth: 300, minHeight: 300)
    }
}

struct SidebarView: View {

    var body: some View {
        VStack {
            NavigationLink(destination: MasterView()) {
                Text("Show Master View")
            }

            Spacer()
        }
        .navigationTitle("Sidebar")
        .padding()
        .frame(minWidth: 200)
    }
}

struct MasterView: View {

    var body: some View {
        VStack {
            Spacer()

            Text("Master View")

            Spacer()
        }
        .navigationTitle("Master View")
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()
            .previewDisplayName("MacOS")
            .previewDevice("mac")

        ContentView()
            .previewDevice("iPhone 11")
            .previewDisplayName("iOS")
    }
}
