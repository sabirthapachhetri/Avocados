//
//  AppView.swift
//  Avocados
//
//  Created by Sabir's MacBook on 11/15/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
           AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            
            ContentView()
                 .tabItem({
                     Image("tabicon-book")
                     Text("Recipes")
                 })
            
            RipenningStagesView()
                 .tabItem({
                     Image("tabicon-avocado")
                     Text("Avocados")
                 })
            
            SettingsView()
                 .tabItem({
                     Image("tabicon-settings")
                     Text("Avocados")
                 })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
