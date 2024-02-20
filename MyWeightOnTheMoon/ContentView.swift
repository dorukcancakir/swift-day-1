//
//  ContentView.swift
//  MyWeightOnTheMoon
//
//  Created by Mehmet Dorukcan ÇAKIR on 5.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var kg = ""
    @State var moonKg: Double! = nil
    @FocusState var isFocused
    var body: some View {
        VStack(alignment: .center) {
            Text("Aydaki Tartı!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Dünyada kaç kilosunuz ?").padding(.top, 20)
            TextField("Kilogram", text: $kg).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).textFieldStyle(.roundedBorder).padding(.top, 20).keyboardType(.decimalPad).focused($isFocused)
            Button("Hesapla") {
                isFocused = false
                let _kg = Double(kg)
                if(_kg == nil){
                    return
                }
                moonKg = Double(_kg! / 6.0)
            }.buttonStyle(.bordered).padding(.top, 10)
            Text("Aydaki kilonuz:").padding(.top, 25)
            Text(moonKg == nil ? "" : String(format: "%.2f", moonKg)).padding(.top, 20)
            Image("moon")
                .resizable()
                .frame(width: 200, height: 200).padding(.top, 40)
        }
    }
}

#Preview {
    ContentView()
}
