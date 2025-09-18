//
//  ContentView.swift
//  StateDemo
//
//  Created by Bennett Lee on 9/17/25.
//

import SwiftUI
import Observation


struct ContentView: View {
    @State private var firstName = ""
//    @FocusState private var isFocused : Bool
    @State private var brightnessLevel = 0
    @State private var isAirplaneModeOn = false
    @State private var selection = 0
    @State private var celsius: Double = 0

    var body: some View {
        VStack {
            Slider(value: $celsius, in: -100...100)


            Picker("Favorite Color", selection: $selection) {
                   Text("Red").tag(0)
                   Text("Green").tag(1)
                   Text("Blue").tag(2)
               }
            .pickerStyle(.menu)

            Toggle("Airplane Mode", isOn: $isAirplaneModeOn)
                .tint(.pink)
                .toggleStyle(.button)

            Toggle("Airplane Mode (Swich", isOn: $isAirplaneModeOn)
                .tint(.pink)
                .toggleStyle(.switch)

            Text("Brightness level \(brightnessLevel)")

            Stepper("Brightness", value: $brightnessLevel, in: 1...100)

            Text("Welcome \(firstName)")
                .font(.title)

            TextField(
                "Please enter first name",
                text: $firstName
            )
//            .focused($isFocused)
//
//            Button("Submit") {
//                // send to your api
//                isFocused = false
//            }
        }
//        .onAppear {
//            isFocused = true
//        }
    }
}


//@Observable
//class Counter {
//  var currentValue: Int = 0
//}
//
//struct ContentView: View {
//  @State var id = UUID()
//
//  var body: some View {
//    VStack {
//      Button("Change id") {
//        id = UUID()
//      }
//      Text("Current id: \(id)")
//
//      ButtonView()
//    }.padding()
//  }
//}
//
//struct ButtonView: View {
//  @State var counter = Counter()
//
//  var body: some View {
//    VStack {
//      Text("Counter is tapped \(counter.currentValue) times")
//      Button("Increase") {
//        counter.currentValue += 1
//      }
//    }.padding()
//  }
//}


//@Observable
//class UserForm {
//    var firstName = "Bennett"
//    var lastName = "Lee"
//    var age = "1"
//}
//
//// Older technique, not recommended
////class UserForm : ObservableObject {
////    @Published var firstName = "Bennett"
////    @Published var lastName = "Lee"
////    @Published var age = "1"
////}
//
//
//struct ContentView: View {
//    @State var form = UserForm()
//
//    var body: some View {
//        VStack(spacing: 12) {
//            MyTextField(
//                placeholder: "First Name",
//                text: $form.firstName
//            )
//            MyTextField(
//                placeholder: "Last Name",
//                text:  $form.lastName
//            )
//            MyTextField(
//                placeholder: "Age",
//                text:  $form.age
//            )
//        }
//    }
//}
//struct MyTextField: View {
//    let placeholder: String
//    @Binding var text : String
//
//    var body : some View {
//        TextField(placeholder, text: $text)
//            .padding()
//            .background(Color.blue)
//            .foregroundStyle(Color.white)
//    }
//}

//struct Counter : View {
//    @Binding var count: Int
//
//    var body: some View {
//        VStack(spacing: 24) {
//            Text("Count: \(count)")
//                .font(.largeTitle)
//
//            HStack(spacing: 24) {
//                Button("Increment") {
//                    count += 1
//                }
//
//                Button("Decrement") {
//                    count -= 1
//                }
//            }
//            .font(.largeTitle)
//        }
//        .padding()
//    }
//}

//truct ContentView: View {
//    @State var text = ""
//
//    var body: some View {
//        TextField("Name", text: $text)
//    }
//}


#Preview {
    ContentView()
}
