//
//  SignIn.swift
//  Expiration
//
//  Created by Q on 2023/09/06.
//

import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            Text("Expiration")
                .font(.title)
                .fontWeight(.bold)
                .padding(10)
            TextField("Email", text: $email)
                .padding(10)
            TextField("Password", text: $password)
                .padding(10)
            Button {} label: {Text("Sign Up")}
                .padding(10)
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
