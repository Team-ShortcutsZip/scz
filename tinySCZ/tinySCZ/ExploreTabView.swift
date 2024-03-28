//
//  ExploreTabView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/26/24.
//

import SwiftUI

struct ExploreTabView: View {
    
    @State private var showModalSheet = false
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            VStack(spacing: 8) {
                
                HStack(spacing: 12) {
                    
                    Image("SCZDevIconClipped")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 44)
                    
                    Spacer()
                    
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 28)
                        .foregroundStyle(LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        ))
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 28)
                        .foregroundStyle(LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        ))
                }
                .zIndex(1.0)
                .blendMode(.colorBurn)
                .padding(.trailing, 6)
                
                // MARK: Promoted Cards
                ScrollView(.horizontal) {
                    
                    LazyHStack(spacing: 8) {
                        
                        Button {
                            showModalSheet.toggle()
                        } label: {
                            PromotedCardView(imagefileName: "StarterPackImage", ArrayLength: 3)
                        }
                        .sheet(isPresented: $showModalSheet) {
                            PromotedContentView()
                        }
                        
                        PromotedCardView(imagefileName: "ForAppleMusic+Image", ArrayLength: 3)
                        
                        PromotedCardView(imagefileName: "ShortcutsForShortcut", ArrayLength: 3)
                        
                        PromotedCardView(imagefileName: "StarterPackImage", ArrayLength: 3)
                        
                        PromotedCardView(imagefileName: "StarterPackImage", ArrayLength: 3)
                        
                        
                    }
                    .padding()
                    .scrollTargetLayout()
                    
                }
                .background(Image("StarterPackImage").blur(radius: 64.0, opaque: false).opacity(0.64))
                .scrollClipDisabled()
                .scrollIndicators(.hidden)
                .scrollTargetBehavior(.viewAligned)
                
                // MARK: Indicator
                // TODO: Make it actually work with page controls
                HStack(alignment: .center, spacing: 8) {
                    
                    Spacer()
                    
                    Circle()
                        .frame(height: 8)
                        .foregroundStyle(LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        ))
                    
                    ForEach(0 ..< 3) { item in
                        Circle()
                            .frame(width: 8, height: 10)
                            .foregroundStyle(LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 1)
                            ))
                        .opacity(0.36)
                    }
                    
                    Spacer()
                    
                }
                .padding(.bottom)
                
                // MARK: Ranking VStack
                VStack(spacing: 24) {
                    
                    // MARK: Latest
                    // 새로 올라온
                    VStack(spacing: 8) {
                        
                        // Header
                        HStack(spacing: 2) {
                            
                            Image(systemName: "sparkles")
                                .foregroundStyle(.yellow)
                                .frame(height: 24)
                                .shadow(color: Color("CharcoalGray").opacity(0.04), radius: 4, x: 0, y: 2)
                            
                            Text("새로 올라온")
                                .font(.title3)
                                .fontWeight(.semibold)
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
                        .blendMode(.multiply)
                        
                        // Body
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 8) {
                                
                                ForEach(0 ..< 5) { item in
                                    LightVerticalShortcutCardView(name: "방금 올라온 새로운 단축어", symbolName: "sparkles", color: "lavender")
                                }
                                
                                ExpandVerticalCardView()

                            }
                        }
                        .scrollClipDisabled()
                        .scrollIndicators(.hidden)
                        
                    }
                    
                    // MARK: Download Ranking
                    // 다운로드 순위
                    VStack(spacing: 8) {
                        
                        HStack(spacing: 2) {
                            
                            Image(systemName: "trophy.fill")
                                .foregroundStyle(LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.64), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.25, green: 0.25, blue: 0.25).opacity(0.31), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.5, y: 0),
                                    endPoint: UnitPoint(x: 0.5, y: 1)
                                ))                            .frame(height: 24)
                            
                            Text("다운로드 순위")
                                .font(.title3)
                                .fontWeight(.semibold)
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
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 8) {
                                
                                ForEach(1 ..< 6) { item in
                                    BoldVerticalShortcutCardView(rank: item, name: "가장 많이 다운받아진 단축어", sfSymbolSystemName: "folder.fill", color: "Red")
                                }
                                
                                ExpandVerticalCardView()
                            }
                        }
                        .scrollClipDisabled()
                        .scrollIndicators(.hidden)
                        
                    }
                    
                    // MARK: Most Loved
                    // 사랑받는
                    VStack(spacing: 8) {
                        
                        HStack(spacing: 2) {
                            
                            Image(systemName: "heart.fill")
                                .foregroundStyle(.blue)
                                .frame(height: 24)
                            
                            Text("사랑받는")
                                .font(.title3)
                                .fontWeight(.semibold)
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
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 8) {
                                
                                ForEach(0 ..< 6) { item in
                                    
                                    BoldVerticalShortcutCardView(rank: 1, name: "사랑받는 단축어", sfSymbolSystemName: "folder.fill", color: "Red")
                                    
                                }
                                
                                ExpandVerticalCardView()
                                
                            }
                        }
                        .scrollClipDisabled()
                        .scrollIndicators(.hidden)
                        
                    }
                }
                
            } // TopVStack
            .padding(.horizontal, 16)
            .padding(.bottom, 96)
            
            
        } // ScrollView
        .scrollBounceBehavior(.basedOnSize)
        .scrollClipDisabled()
        .mask {
            LinearGradient(colors: [.black.opacity(0.5),.black,.black, .black,.black,.black,.black,.black,.black,.black,.black,.black.opacity(0.95), .black.opacity(0.5)], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 1.0))
                .ignoresSafeArea()
        }
    }
}

#Preview {
    
    ZStack{
        
        Color("CharcoalGray").opacity(0.04)
            .ignoresSafeArea()
        
        ExploreTabView()
            
    }
}
