//
//  VerticalShortcutCardView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/26/24.
//

import SwiftUI

struct BoldVerticalShortcutCardView: View {
    
    // TODO: Make it WORK
    @State var rank: Int
    
    @State var name: String
    @State var sfSymbolSystemName: String
    @State var color: String
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 16)
                .foregroundStyle(LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.96, green: 0.43, blue: 0.44), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.95, green: 0.35, blue: 0.37), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                ))
                    
                        
                        RoundedRectangle(cornerRadius: 16)
                            .strokeBorder(.white.opacity(0.12), lineWidth: 2.0)
                        
                        VStack(alignment: .leading) {
                            
                            HStack {
                                ZStack {
                                    Image(systemName: "seal.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 28)
                                        .foregroundStyle(.white.opacity(0.64))
                                    
                                    Image(systemName: "seal")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 28)
                                        .foregroundStyle(.white.opacity(0.24))
                                    
                                    Text(String(rank))
                                        .fontDesign(.rounded)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.white.opacity(0.88))
                                        .blendMode(.colorBurn)
                                }
                                
                                Spacer()
                                
                            } // HStack
                            
                            Text(name)
                                .fontWeight(.bold)
                                .foregroundStyle(LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.5, y: 0),
                                    endPoint: UnitPoint(x: 0.5, y: 1)
                                ))
                                .blendMode(.plusDarker)
                                .padding(.leading, 4)
                            
                            Spacer()
                            
                            HStack(alignment: .bottom, spacing: 2) {
                                Image(systemName: "arrow.down.to.line")
                                    .imageScale(.small)
                                
                                Text("1,028")
                                    .font(.footnote)
                                    .fontDesign(.rounded)
                                    .fontWeight(.medium)
                                
                                Spacer()
                                
                                Image(systemName: sfSymbolSystemName)
                                    .imageScale(.large)
                                    .foregroundStyle(LinearGradient(
                                        stops: [
                                            Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                            Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                                        ],
                                        startPoint: UnitPoint(x: 0.5, y: 0),
                                        endPoint: UnitPoint(x: 0.5, y: 1)
                                    ))
                                
                            } // HStack
                            .foregroundStyle(Color("CharcoalGray").opacity(0.48))
                            .blendMode(.multiply)
                            .padding([.horizontal, .bottom], 2)
                        } // VStack
                        .padding(8)
            .shadow(color: Color("CharcoalGray").opacity(0.04), radius: 4, x: 0, y: 2)
        }
        .frame(width: 116, height: 156)

    }
}

struct LightVerticalShortcutCardView: View {
    
    // TODO: Make it WORK
    @State var name: String
    @State var symbolName: String
    @State var color: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 16)
            .foregroundStyle(.white)
            .frame(width: 116, height: 156)
            .overlay{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color("CharcoalGray").opacity(0.04), lineWidth: 2.0)
                    
                    VStack(alignment: .leading, spacing: 8) {
                            
                            Image(systemName: symbolName)
                                .foregroundStyle(Color("CharcoalGray"))
                                .imageScale(.medium)
                            
                            Capsule()
                                .frame(maxWidth: .infinity)
                                .frame(height: 2.0)
                                .foregroundStyle(Color(red: 0.71, green: 0.51, blue: 0.88))
                            
                            Text(name)
                                .fontWeight(.bold)
                                .foregroundStyle(LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.5, y: 0),
                                    endPoint: UnitPoint(x: 0.5, y: 1)
                                ))
                            
                            Spacer()
                            
                        }
                        .padding([.horizontal, .top], 14)
                        
                        Spacer()
                    
                }
            }
            .shadow(color: Color("CharcoalGray").opacity(0.04), radius: 4, x: 0, y: 2)
        
    }
}

struct ExpandVerticalCardView: View {
    
    // TODO: Make it WORK
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 16)
            .foregroundStyle(Color("CharcoalGray").opacity(0.08))
            .frame(width: 116, height: 156)
            .overlay{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(.white.opacity(0.08), lineWidth: 2.0)
                    Text("더보기")
                        .foregroundStyle(Color("CharcoalGray").opacity(0.48))
                }
            }
            .shadow(color: Color("CharcoalGray").opacity(0.04), radius: 4, x: 0, y: 2)
        
    }
}
#Preview {
    
    HStack {
        
        BoldVerticalShortcutCardView(rank: 1, name: "인기 많은 단축어", sfSymbolSystemName: "trophy.fill", color: "Red")
        LightVerticalShortcutCardView(name: "새로 올라온 단축어", symbolName: "sparkles", color: "Red")
        ExpandVerticalCardView()
    }
    
}
