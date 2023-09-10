//
//  ContentView.swift
//  Expiration
//
//  Created by Q on 2023/09/06.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Expiration")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(10)
                TextField("Email", text: $email)
                    .padding(10)
                TextField("Password", text: $password)
                    .padding(10)
                NavigationLink(destination: ListView()) {
                    Text("Sign In")
                        .padding(10)
                }
                NavigationLink(destination: SignUpView()) {
                    Text("Not registerd yet?")
                        .font(.system(size: 12))
                        .padding(10)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
