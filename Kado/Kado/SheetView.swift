//
//  SheetView.swift
//  Kado
//
//  Created by Admin on 14/6/2567 BE.
//

import SwiftUI

struct SheetView: View {
    @Binding var helloName:String
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Enter Hello Name")
                .font(.title2)
            TextField("Your Hello Name here", text:$helloName)
                .textFieldStyle(.roundedBorder)
            HStack {
                Spacer()
                Button("Done", action: {dismiss()})
            }
        }.padding()
    }
}

#Preview {
    SheetView(helloName: .constant("Kdoi"))
}
