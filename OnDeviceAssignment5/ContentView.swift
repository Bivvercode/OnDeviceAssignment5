//
//  ContentView.swift
//  OnDeviceAssignment5
//
//  Created by Alexander Andersson on 2023-10-23.
//

import SwiftUI

struct ContentView: View {
    let domodel = DoModel()
    @State var animalPrediction1 = ""
    @State var animalPrediction2 = ""
    
    var body: some View {
        HStack {
            VStack {
                Image("rottweiler")
                    .resizable()
                    .frame(width: 150, height: 150)
                Button {
                    animalPrediction1 = domodel.doImage("rottweiler")
                } label: {
                    Text("Predict animal")
                }
                Text(animalPrediction1)
                    .frame(width: 125)
            }
            VStack {
                Image("americanBully")
                    .resizable()
                    .frame(width: 150, height: 150)
                Button {
                    animalPrediction2 = domodel.doImage("americanBully")
                } label: {
                    Text("Predict animal")
                }
                Text(animalPrediction2)
                    .frame(width: 125)
            }
        }
    }
}

#Preview {
    ContentView()
}
