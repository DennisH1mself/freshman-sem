//
//  ContentView.swift
//  Cooking
//
//  Created by Dennis Porter on 9/29/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var currentFrame = "Start";
    @State private var obj = "Burger";
    func ChangeCurrentFrame(frameX: String) {
        currentFrame = frameX
    }
    func Recipe() {
        ChangeCurrentFrame(frameX: "Recipe")
    }
    func Ready() {
        ChangeCurrentFrame(frameX: "Ready")
    }
    var body: some View {
        if currentFrame == "Start" {
            VStack {
                Text("The Cookbook").font(.system(size: 100, weight: Font.Weight.bold))
                Text("Level 1").font(.system(size: 30, weight: Font.Weight.heavy))
                VStack {
                    Text("Cooking Objective").font(.system(size: 70))
                    Text(obj).font(.system(size: 80, weight: Font.Weight.bold))
                }.offset(y: 100)
                Button(action: Recipe) {
                    
                    Text("Start").font(.system(size: 60)).padding()
                }.offset(y: 100)
            }
            .padding().offset(y: -100).frame(width: 1500)
        } else if currentFrame == "Recipe" {
            VStack {
                VStack {
                    Text("Level 1 Objective: Make a Burger").font(.system(size: 80, weight: Font.Weight.bold))
                    Text("Items Needed").font(.system(size: 50, weight: Font.Weight.bold))
                    Text("Access to Outdoor Grill").font(.system(size: 50, weight: Font.Weight.regular))
                    Text("1/2 Teaspoon Salt").font(.system(size: 50, weight: Font.Weight.regular))
                    Text("1/2 Teaspoon Ground Black Pepper").font(.system(size: 50, weight: Font.Weight.regular))
                    Text("1/2 Teaspoon Ground Beef").font(.system(size: 50, weight: Font.Weight.regular))
                    Text("1/2 Cup Fine Dry Bread Crumbs").font(.system(size: 50, weight: Font.Weight.regular))
                    Text("1 large egg").font(.system(size: 50, weight: Font.Weight.regular))
                    Text("You are one item away from reaching level 2.").font(.system(size: 30, weight: Font.Weight.regular))
                }.offset(y: 100)
                
                HStack {
                    Button(action: Ready) {
                        
                        Text("I'm Ready!").font(.system(size: 60)).padding()
                    }.offset(y: 100)
                    Button(action: Ready) {
                        
                        Text("Cancel").font(.system(size: 60)).padding()
                    }.offset(x: 10, y: 100)
                }
            }
            .padding().offset(y: -100).frame(width: 1500)            
        } else if (currentFrame == "Ready") {
                
                
        }
    }
}


#Preview(windowStyle: .automatic) {
    ContentView().padding()
}
