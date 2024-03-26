//
//  ContentView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var icons = ["ShorcutIcon_MetalVer", "ShorcutIcon_BlueClayVer", "ShorcutIcon_BlueCandyVer"]
    
    @State var counter = 0
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24) {
            
            HStack {
                Image("SCZDevIconClipped")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 64)
                Spacer()
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 8) {
                    
                    Text("티모님,\n다시 만나 반가워요!")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("잠시 자리를 비우신 사이,")
                    
                    HStack(spacing: 0) {
                        Group {
                            Text("Shortcuts")
                                .foregroundStyle(.white)
                                .padding(.leading, 2)
                            
                            Text("Zip")
                                .foregroundStyle(.blue)
                                .blendMode(.lighten)
                                .padding(.trailing, 2)
                            
                        }
                        .padding(.vertical, 2)
                        .background(.black)
                        .fontWeight(.semibold)
                        
                        Text("에 크고 작은 변화가 있었어요")
                    }
            }
            .padding(.horizontal, 8)

            
            VStack(alignment: .leading, spacing: 8) {

                Button {
                    //
                } label: {
                    Text("알아보기")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(UIColor.systemBlue))
                }
                
                Button {
                    //
                } label: {
                    Text("나중에 볼게요")
                        .frame(maxWidth: .infinity)
                        .frame(height: 36)
                }
                
            }
            
            //            Button {
            //                if counter < icons.count - 1 {
            //                    counter += 1
            //
            //                } else if counter == icons.count - 1 {
            //                    counter = 0
            //                }
            //            } label: {
            //                Image(icons[counter])
            //                .resizable()
            //                .aspectRatio(contentMode: .fill)
            //                .scaleEffect(CGSize(width: 0.5, height: 0.5))
            //            }
            
        }
        .padding([.horizontal, .top], 16)
        
    }
}

#Preview {
    ContentView()
}
