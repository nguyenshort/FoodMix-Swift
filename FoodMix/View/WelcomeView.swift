//
//  Welcome.swift
//  FoodMix
//
//  Created by Yuan on 24/02/2022.
//

import SwiftUI
import Introspect

struct WelcomeView: View {
    
    @StateObject var viewModel: WelcomeViewModel = WelcomeViewModel()
    
    @State var rotation: Double = .zero
        
    
    var body: some View {
        
        NavigationView {
            OffsetPageTabView(offset: $viewModel.offset) {
                
                WelcomeAvatar()
            }
            .background(
                
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .frame(width: getScreenBounds().width - 100, height: getScreenBounds().width - 100)
                    .scaleEffect(2)
                    .rotationEffect(.init(degrees: 25))
                    .rotationEffect(.init(degrees: rotation))
                    .offset(x: -20,y: -getScreenBounds().width / 2)
                
                ,alignment: .top
                
            )
            .background(
                
                boardingScreens[viewModel.currentIndex].color
                    .ignoresSafeArea()
            )
            .overlay(
                
                WelcomeButtons()
                
                ,alignment: .bottom
            
            )
        }
        .onChange(of: viewModel.offset) { value in
            
            DispatchQueue.main.async {
                
                let process = viewModel.offset / getScreenBounds().width
                
                viewModel.currentIndex = Int(process)
                rotation = Double(process) * 180
                
            }
            
        }
        .environmentObject(viewModel)
        .introspectNavigationController { navi in
            navi.navigationBar.isHidden = true
        }
        
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
