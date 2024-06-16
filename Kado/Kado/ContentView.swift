//
//  ContentView.swift
//  Kado
//
//  Created by Admin on 14/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var helloName:String = "Kadoi"
    @State var showSheet:Bool = false
    @State var colorScheme:String = "Dark"
    var body: some View {
        ZStack {
            Color.primary
                .ignoresSafeArea(.all)
                .opacity(0)
            VStack {
                Image("OMGDORAEMON")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: 400)
                Text("Hello, \(helloName)!")
                    .font(.title)
                    .fontWeight(.bold)
                Button("Edit your Name", action: {
                    showSheet.toggle()
                })
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Button(colorScheme){
                    
                }
                .padding()
                .background(.background)
                .foregroundStyle(.primary)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .colorInvert()
            }
        }.sheet(isPresented: $showSheet, content: {
            SheetView(helloName: $helloName)
        })
    }
}

#Preview {
    ContentView()
}
