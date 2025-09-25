//
//  ContentView.swift
//  MadLibsDemo
//
//  Created by Bennett Lee on 9/22/25.
//

import SwiftUI

let MoreIndex = 0
let LessIndex = 1

struct ContentView: View {
    @State var name = "John"
    @State var city = "Las Vegas"
    @State var verb = "Dance"
    @State var age = "21"

    @State var moreOrLess = MoreIndex
    @State var favoriteNumber = 42.0
    @State var animalIndex = 0
    @State var numberOfPets = 0

    @State var isHappyEnding = false
    @State var presentStory = false

    var showMore: Bool {
        moreOrLess == MoreIndex
    }

    var fullStory : String {
          let animals = ["Panda", "Giraffe", "Lobster", "Dog"]

           var story = "At the age of \(age), \(name) took a trip to \(city) with \(numberOfPets) pets in order to \(verb) with an \(animals[animalIndex]). \(name) decided to buy \(Int(favoriteNumber))."

           if isHappyEnding {
               story += " Now they live happily ever after."
           } else {
               story += " Things did not go too well =("
           }

           return story
       }


    var body: some View {
        VStack(spacing: 18) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 48)

            VStack {
                TextField("Name", text: $name)
                    .padding()
                    .background(Color.white)

                TextField("City", text: $city)
                    .padding()
                    .background(Color.white)

                TextField("Verb", text: $verb)
                    .padding()
                    .background(Color.white)

                TextField("Age", text: $age)
                    .padding()
                    .background(Color.white)
            }

            Picker("More or less", selection: $moreOrLess) {
                Text("More").tag(MoreIndex)
                Text("Less").tag(LessIndex)
            }
            .pickerStyle(.segmented)

            if showMore {
                VStack(spacing: 16) {
                    Picker("Animal", selection: $animalIndex){
                        Text("Panda").tag(0)
                        Text("Giraffe").tag(1)
                        Text("Lobster").tag(2)
                        Text("Dog").tag(3)
                    }
                    .pickerStyle(.segmented)

                    HStack {
                        Text("\(Int(favoriteNumber))")
                        Slider(value: $favoriteNumber, in: 0...100)
                    }

                    Stepper("Pets \(numberOfPets)", value:$numberOfPets, in: 0...100 )

                    Toggle("Happy Ending?", isOn: $isHappyEnding)
                }
                .padding()
                .background(Color.white)
            }

            Button("Create Story") {
                print(fullStory)
                presentStory = true
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)

            Spacer()
        }
        .padding(.horizontal)
        .background(Color.yellow)
        .alert("Story", isPresented: $presentStory) {
            Button("ok") { }
        } message: {
            Text(fullStory)
        }
    }
}

#Preview {
    ContentView()
}
