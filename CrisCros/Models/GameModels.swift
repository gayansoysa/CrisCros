//
//  GameModels.swift
//  CrisCros
//
//  Created by Gayan Soysa on 7/28/24.
//

import Foundation

enum GameType{
    case single, bot, peer, unditermined
    
    var description:String{
        switch self{
        case .single:
            return "Share your iPhone/iPad and play against your friend"
        
        case .bot:
            return "Play against this iPhone/iPad"
        
        case .peer:
            return "Invite someone who has this app running to play"
        
        case .unditermined:
            return ""
        
        }
    }
}
