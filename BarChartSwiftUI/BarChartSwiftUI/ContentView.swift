//
//  ContentView.swift
//  BarChartUI
//
//  Created by Jannatun Nahar Papia  on 7/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var pickerSelectedItem = 0
    var body: some View {
        // use ZStack for background color
        ZStack {
            
            Color.pink.edgesIgnoringSafeArea(.all)
            // use VStack for weekday line
            VStack {
                
        Text("Calory Intake")
           // .padding()
        // Modify size
            .font(.system(size: 34))
            .fontWeight(.heavy) // use heavy font
            
            Picker(selection: $pickerSelectedItem, label: Text("")) {
                Text("Weekday").tag(0) // use tag for highlight Text
                Text("Afternoon").tag(1)
                Text("Evening").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
                //add some padding value horizontally
                padding(.horizontal, 24)
                
                HStack {
                    ZStack {
                        Capsule().frame(width: 30, height: 200)
                        Capsule().frame(width: 30, height: 100)
                            .foregroundColor(.white)
                    }
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
