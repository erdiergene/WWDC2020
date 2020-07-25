//
//  ContentView.swift
//  AppStorageExam
//
//  Created by Macbook PRO on 12.07.2020.
//



import SwiftUI

enum Settings {
    static let notifications = "notifications"
    static let notifacationHour = "notifacationHour"
}

struct ContentView: View {
    @AppStorage(Settings.notifications) var notifications: Bool = false
    @AppStorage(Settings.notifacationHour) var notifacationHour: Double = 6.0

    var body: some View {
        Form {
            Section {
                Toggle("Notifications", isOn: $notifications)
            }

            Section {
                Stepper(value: $notifacationHour, in: 6...12) {
                    Text("Notification hour is \(notifacationHour, specifier: "%.f") hr")
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


