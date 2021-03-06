//
//  ContentView.swift
//  BarCharSwifttUI
//
//  Created by Jannatun Nahar Papia  on 7/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var pickerSelectedItem = 0
    
    @State var dataPoints: [[CGFloat]] = [
             [ 50,100,150,120,40,80,200],
             [150,100,50, 60,80,30,90],
             [50,20,30,40,80,50,70]
    ]
    
    var body: some View {
        // use ZStack for background color
        ZStack {
            
            Color.purple.edgesIgnoringSafeArea(.all)
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
                    .padding(.horizontal, 24)
                
                HStack (spacing: 16) {
                  //  BarView(value: 50) // initialize upper sloving value
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                    BarView(value: dataPoints[pickerSelectedItem][3])
                    BarView(value: dataPoints[pickerSelectedItem][4])
                    BarView(value: dataPoints[pickerSelectedItem][5])
                    BarView(value: dataPoints[pickerSelectedItem][6])


                    
                  /*  VStack {
                    ZStack (alignment: .bottom) {
                        Capsule().frame(width: 30, height: 200)
                            .foregroundColor(Color.green) // for Bars background Color
                        Capsule().frame(width: 30, height: 100)
                            .foregroundColor(.white) // for Bars background Color
                    }
                    Text("D") // add text for bars
                            .padding(.top, 8)
                }
                    
                    VStack {
                    ZStack (alignment: .bottom) {
                        Capsule().frame(width: 30, height: 200)
                            .foregroundColor(Color.green) // for Bars background Color
                        Capsule().frame(width: 30, height: 100)
                            .foregroundColor(.white) // for Bars background Color
                    }
                    Text("D") // add text for bars
                            .padding(.top, 8)
                }
                    
                    VStack {
                    ZStack (alignment: .bottom) {
                        Capsule().frame(width: 30, height: 200)
                            .foregroundColor(Color.green) // for Bars background Color
                        Capsule().frame(width: 30, height: 100)
                            .foregroundColor(.white) // for Bars background Color
                    }
                    Text("D") // add text for bars
                            .padding(.top, 8)
                }
                   */
                }.padding(.top, 24)
                    .animation(.default)
        }
            }
        }
    }


struct BarView: View {
    var value: CGFloat
    
    var body: some View {
        
        VStack {
        ZStack (alignment: .bottom) {
            Capsule().frame(width: 30, height: 200)
                .foregroundColor(Color.green) // for Bars background Color
            Capsule().frame(width: 30, height: value)
                .foregroundColor(.white) // for Bars background Color
        }
        Text("D") // add text for bars
                .padding(.top, 8)
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

