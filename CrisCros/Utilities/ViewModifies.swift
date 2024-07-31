//
//  ViewModifies.swift
//  CrisCros
//
//  Created by Gayan Soysa on 7/29/24.
//

import SwiftUI

struct NavstackContainer : ViewModifier {
    
    func body(content: Content) -> some View {
        if #available(iOS 16, *){
            NavigationStack{
                content
            }
        }
        else {
            NavigationView{
                content
            }
            .navigationViewStyle(.stack)
        }
    }
}

extension View{
    public func inNavigationStack() -> some View {
        return self.modifier(NavstackContainer())
    }
    
}
