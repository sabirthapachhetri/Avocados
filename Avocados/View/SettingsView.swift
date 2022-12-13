//
//  SettingsView.swift
//  Avocados
//
//  Created by Sabir's MacBook on 11/15/22.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotifictaion: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotifictaion) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Enable Notification")
                    }
                }
                
                Section(header: Text("Application")) {
                    
                    if enableNotifictaion {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Sabir Thapa")
                        }

                        HStack {
                            Text("Design").foregroundColor(Color.gray)
                            Spacer()
                            Text("Felicia")
                        }

                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("sabirthapa.com.np")
                        }
                    }
                    else {
                        HStack {
                            Text("Personal Message").foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
