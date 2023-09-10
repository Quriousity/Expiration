//
//  MainView.swift
//  Expiration
//
//  Created by Q on 2023/09/06.
//

import SwiftUI

struct MainView: View {
    @State private var today = Date()
    @State private var selectedTimeZone = TimeZone.current
    
    @State var showDate = true
    @State var showTime = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Expiration")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(10)
                //                HStack {
                //                    Button {
                //                        if showDate {
                //                            showDate = false
                //                        } else {
                //                            showDate = true
                //                        }
                //                    } label: {Text("\(today, formatter: dateFormatter)")}
                //                        .padding(10)
                //                    Button {
                //                        if showTime {
                //                            showTime = false
                //                        } else {
                //                            showTime = true
                //                        }
                //                    } label: {Text("\(today, formatter: timeFormatter)")}
                //                        .padding(10)
                //                }
                HStack {
                    if showDate {
                        DatePicker("", selection: $today, displayedComponents: .date)
                        //                        .datePickerStyle(.wheel)
                            .datePickerStyle(.compact)
                            .labelsHidden()
                            .onChange(of: today, perform: { newToday in print(newToday)} )
                    }
                    if showTime {
                        DatePicker("", selection: $today, displayedComponents: .hourAndMinute)
                            .datePickerStyle(.compact)
                            .labelsHidden()
                            .onChange(of: today, perform: { newToday in } )
                    }
                    
                }
                .padding(.top, 50)

                Button { print(today) } label: {Text("Start")}
                    .padding(30)
                Text("\(today, formatter: dateFormatter) \(today, formatter: timeFormatter)")
                    .padding(10)
            }
            .padding()
        }
    }
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
//        formatter.timeZone = selectedTimeZone
        return formatter
    }
    private var timeFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
//        formatter.timeZone = selectedTimeZone
        return formatter
    }

}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
