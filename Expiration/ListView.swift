//
//  SignIn.swift
//  Expiration
//
//  Created by Q on 2023/09/06.
//

import SwiftUI

struct ListView: View {
    @State var email = ""
    @State var password = ""
    @State private var today = Date()

    var body: some View {
        NavigationView {
            List{
                Text("\(today, formatter: dateFormatter)")
                    .padding(.vertical, 10)
                Text("one")
                    .padding(.vertical, 10)
                Text("two")
                    .padding(.vertical, 10)
                Text("three")
                    .padding(.vertical, 10)
                Text("four")
                    .padding(.vertical, 10)
                Text("five")
                    .padding(.vertical, 10)
            }
              .navigationBarTitle("Expiration")
              .toolbar {
                  ToolbarItem(placement: .navigationBarTrailing) {
                      NavigationLink(destination: MainView()) {
                          Text("+")
                              .font(.system(size: 35))
                              .padding(10)
                      }
                  }
            }
        }
    }
}
private var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm"
//        formatter.timeZone = selectedTimeZone
    return formatter
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
