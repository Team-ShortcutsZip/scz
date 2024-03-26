//
//  PromotedCardView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/26/24.
//

import SwiftUI

struct PromotedCardView: View {
    
    @State var imagefileName : String
    @State var ArrayLength : Int
    
    var body: some View {
        
        ZStack {
            
            Image(imagefileName)
                .resizable()
                .frame(width: 320, height: 320)
                .blur(radius: 16)
                .opacity(0.64)
                .overlay{
                    RoundedRectangle(cornerRadius: 24)
                    .strokeBorder(Color("CharccoalGray").opacity(0.16), lineWidth: 2.0)}
                .clipShape(RoundedRectangle(cornerRadius: 24.0))
            
            LazyVStack(spacing: 8) {
                
                Spacer()
                
                VStack(spacing: 6) {
                    
                    Text("SCZ 개발팀이 추천하는")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .blendMode(.colorBurn)
                    
                    Text("단축어 스타터팩")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("CharcoalGray"))
                        .blendMode(.multiply)
                }
                
                Spacer()
                
                // MARK: Shortcut Icons
                HStack(spacing: 10) {
                    
                    // MARK: First Shortcuts
                    RoundedRectangle(cornerRadius: 16.0)
                        .frame(width: 66, height: 66)
                        .foregroundStyle(LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.44), location: 0.00),
                                Gradient.Stop(color: Color(red: 1, green: 0.49, blue: 0.37), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        ))
                        .overlay {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 16.0)
                                    .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                                
                                Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 38)
                                    .foregroundStyle(.white.opacity(0.88))
                            }}
                    
                    // MARK: Second Shortcuts
                    RoundedRectangle(cornerRadius: 16.0)
                        .frame(width: 66, height: 66)
                        .foregroundStyle(LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0, green: 0.81, blue: 0.88), location: 0.00),
                                Gradient.Stop(color: Color(red: 0, green: 0.78, blue: 0.87), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        ))
                        .overlay {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 16.0)
                                    .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                                
                                Image(systemName: "video.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 38)
                                    .foregroundStyle(.white.opacity(0.88))
                                
                            }}
                    
                    // MARK: Third Shortcuts
                    RoundedRectangle(cornerRadius: 16.0)
                        .frame(width: 66, height: 66)
                        .foregroundStyle(LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.75, green: 0.51, blue: 0.9), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.72, green: 0.45, blue: 0.89), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        ))
                        .overlay {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 16.0)
                                    .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                                
                                Image(systemName: "gearshape.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 38)
                                    .foregroundStyle(.white.opacity(0.88))
                                
                            }}
                }
                
                Spacer()
                
                // MARK: Divider
                Capsule()
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.horizontal)
                    .foregroundStyle(Color("CharcoalGray").opacity(0.08))
                    .blendMode(.colorBurn)
                
                Spacer()
                
                Text("새 학기, 새 직장, 또는 새로운 취미를 시작했거나 단축어가 처음인 당신을 위해 모아 봤어요")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.gray)
                    .frame(width: 280)
                    .blendMode(.plusDarker)
                
                Spacer()
                
            }
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 24))
        
    }
}

#Preview {
    PromotedCardView(imagefileName: "StarterPackImage", ArrayLength: 3)
}
