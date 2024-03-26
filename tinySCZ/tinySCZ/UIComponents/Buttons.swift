//
//  Buttons.swift
//  tinySCZ
//
//  Created by 김보영 on 3/22/24.
//

import SwiftUI

struct Buttons: View {
    
    var body: some View {
        
        VStack(spacing: 16) {
            LightButton()
            RegularButton()
            MediumButton()
            BoldButton()
            AnimatedButton()
        }
    }
}

struct LightButton: View {
    
    var body: some View {
        
        Button {
            // Action
        } label: {
            Text("Light Button")
                .foregroundStyle(LinearGradient(colors: [Color(UIColor.systemGray), Color(UIColor.systemGray2)], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 1.0)))
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color(UIColor.systemGray6))
                .clipShape(Capsule())
                .overlay{
                    Capsule()
                        .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                }
            
        }
    }
}

struct RegularButton: View {
    
    var body: some View {
        
        Button {
            // Action
        } label: {
            Text("Regular Button")
                .foregroundStyle(LinearGradient(colors: [Color("StartingBlue"), Color("AccentColor")], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 1.0)))
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color(UIColor.systemGray6))
                .clipShape(Capsule())
                .overlay{
                    Capsule()
                        .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                }
            
        }
    }
}

struct MediumButton: View {
    
    var body: some View {
        
        Button {
            // Action
        } label: {
            Text("Medium Button")
                .foregroundStyle(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(LinearGradient(colors: [Color("StartingBlue"), Color("AccentColor")], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 1.0)).opacity(0.5))
                .clipShape(Capsule())
                .overlay{
                    Capsule()
                        .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                }
            
        }
    }
}

struct BoldButton: View {
    
    var body: some View {
        
        Button {
            // Action
        } label: {
            Text("Bold Button")
                .foregroundStyle(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(LinearGradient(colors: [Color("StartingBlue"), Color("AccentColor")], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 1.0)))
                .clipShape(Capsule())
                .overlay{
                    Capsule()
                        .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                }
        }
    }
}

struct AnimatedButton: View {
    
    @State var buttonTapped = false
    @State var animated = false
    
    var body: some View {
        
        Button {
            
            buttonTapped.toggle()
            animated.toggle()
            
        } label: {
            
            Text("Animated Button")
                .foregroundStyle(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(LinearGradient(colors: [Color("StartingBlue"), Color("AccentColor")], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 1.0)))
                .clipShape(Capsule())
                .overlay{
                    ZStack {
                        Capsule()
                            .foregroundStyle(.gray)
                            .blendMode(animated ? .multiply : .colorBurn)
                        Capsule()
                            .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                    }}
                .animation(.easeInOut(duration: 12.0).repeatForever(autoreverses: false), value: animated)
                .onAppear{animated.toggle()}
        }
        
    }
}

#Preview {
    Buttons()
}
