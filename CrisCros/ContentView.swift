//
//  ContentView.swift
//  CrisCros
//
//  Created by Gayan Soysa on 7/28/24.
//

import SwiftUI

struct StartView: View {
    
    @State var gameType : GameType = .unditermined
    @State var yourName = ""
    @State var opponentName = ""
    @FocusState var focus : Bool
    @State var startGame = false
    
    var body: some View {
        VStack() {
            Picker("Select Game", selection: $gameType){
                Text("Select Game Type").tag(GameType.unditermined)
                Text("Two sharing device").tag(GameType.single)
                Text("Challeneg your device").tag(GameType.bot)
                Text("Challeneg a friend").tag(GameType.peer)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 6,style: .continuous).stroke(lineWidth: 2))
            
            Text(gameType.description)
                .padding()
            
            VStack {
                switch gameType {
                case .single:
                    VStack{
                        TextField("Your name", text: $yourName)
                        TextField("Your opponents name", text: $opponentName)
                    }
                case .bot:
                    TextField("Your name", text: $yourName)
                case .peer:
                    EmptyView()
                case .unditermined:
                    EmptyView()
                }
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            .focused($focus)
            .frame(width: 350)
            if gameType != .peer {
                Button("Start Game"){
                    focus = false
                    startGame.toggle()
                }
                .buttonStyle(.borderedProminent)
                .disabled(
                    gameType == .unditermined ||
                    gameType == .bot && yourName.isEmpty ||
                    (yourName.isEmpty || opponentName.isEmpty)
                )
                
                Image("LaunchScreen")
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Criss Cross")
        .fullScreenCover(isPresented: $startGame){
            GameView()
        }
        .inNavigationStack()
    }
}

#Preview {
    StartView()
}
