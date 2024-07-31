//
//  GameView.swift
//  CrisCros
//
//  Created by Gayan Soysa on 7/29/24.
//

import SwiftUI

struct GameView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .center){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar {
            ToolbarItem (placement: .navigationBarTrailing){
                Button("End Game"){
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
        .navigationTitle("Criss Cross")
        .inNavigationStack()
    }
}

#Preview {
    GameView()
}
