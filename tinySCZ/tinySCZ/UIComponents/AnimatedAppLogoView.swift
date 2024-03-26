//
//  AnimatedAppLogoView.swift
//  HappyAnding
//
//  Created by 김보영 on 1/29/24.
//

import SwiftUI

struct AnimatedAppLogoView: View {
    
    @State private var isAnimated = false
    @State private var animationDuration : Double = 3.2
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("versionAppIcon")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.0)
                
                Image(systemName: "suit.diamond")
                    .resizable()
                    .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.73)
                    .rotationEffect(Angle(degrees: 90.0))
                    .offset(y: isAnimated ? 88 : 42)
                    .foregroundStyle(.gray.opacity(0.32))
                    .zIndex(1.0)
                    .animation(.easeInOut(duration: animationDuration).repeatForever(autoreverses: true), value: isAnimated)
                
                Image(systemName: "suit.diamond.fill")
                    .resizable()
                    .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.73)
                    .rotationEffect(Angle(degrees: 90.0))
                    .foregroundStyle(.linearGradient(colors: [.cyan, .cyan, .cyan, .cyan, .cyan, .blue.opacity(0.72)], startPoint: UnitPoint(x: 0.0, y: 0.5), endPoint: UnitPoint(x: 1.0, y: 0.5)))
                    .zIndex(2.0)
                    .shadow(color: .cyan.opacity(0.64), radius: 32)
                    .shadow(color: .cyan.opacity(0.88), radius: 12, y: 2)

                ZStack {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.73)
                        .rotationEffect(Angle(degrees: 90.0))
                        .offset(y: isAnimated ? -88 : -42)
                        .foregroundStyle(.ultraThinMaterial)
                        .animation(.easeInOut(duration: animationDuration).repeatForever(autoreverses: true), value: isAnimated)
                        .shadow(color: .white.opacity(0.5), radius: 2, y: 2)
                        .shadow(color: .white.opacity(0.32), radius: 16)
                    
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.73)
                        .rotationEffect(Angle(degrees: 90.0))
                        .offset(y: isAnimated ? -88 : -42)
                        .foregroundStyle(.linearGradient(colors: [.cyan, .white.opacity(0.28), .white.opacity(0.0), .clear, .clear], startPoint: UnitPoint(x: 0.0, y: 0.5), endPoint: UnitPoint(x: 1.0, y: 0.5)))
                        .zIndex(3.0)
                        .animation(.easeInOut(duration: animationDuration).repeatForever(autoreverses: true), value: isAnimated)
                        .shadow(color: .cyan.opacity(0.64), radius: 24, y: 2)
                        .blendMode(.overlay)
                }
                .zIndex(3.0)
                
            } // ZStack
            
        } // GeometryReader
        .onAppear {
            isAnimated.toggle()
        }
    }
}

#Preview {
    
    AnimatedAppLogoView()
    
}
