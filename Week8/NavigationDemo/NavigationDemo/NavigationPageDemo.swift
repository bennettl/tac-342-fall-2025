//
//  NavigationPageDemo.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/15/25.
//

import SwiftUI

struct ShoeListPage : View {
    var body: some View {
        List {
            Text("Shoe 1")
            Text("Shoe 2")
            Text("Shoe 3")
        }
    }
}

//
//struct User {
//    let id : String
//}

struct NavigationPageDemo: View {
    var body: some View {
        NavigationStack {
            List {

                // Value base navigation
                NavigationLink(value: "1", label: {
                    Text("Show 1")
                })
                NavigationLink(value: "2", label: {
                    Text("Show 2")
                })
                NavigationLink(value: "3", label: {
                    Text("Show 3")
                })

//                NavigationLink(value: User(id: "1")) {
//                    Text("User 1")
//                }

                // Embeding the destination INSIDE the navigation link
//                NavigationLink("Shoe 1") {
//                    Text("Shoe 1 Detail")
//                }
//                NavigationLink("Shoe 2") {
//                    Text("Shoe 2 Detail")
//                }
//                NavigationLink("Shoe 3") {
//                    Text("Shoe 3 Detail")
//                }
            }
            .navigationDestination(for: String.self) { value in
                Text("Shoe \(value) detail")
            }
//            .navigationDestination(for: User.self) { user in
//                UserProfilePage(user:user )
//            }

//            NavigationLink {
//               ShoeListPage()
//            } label: {
//                Label("Home", systemImage: "house")
//            }
//
//            NavigationLink(
//                "Shoe Link",
//                destination: {
//                    List {
//                        Text("Shoe 1")
//                        Text("Shoe 2")
//                        Text("Shoe 3")
//                    }
//                }
//            )
        }
    }
}

#Preview {
    NavigationPageDemo()
}
