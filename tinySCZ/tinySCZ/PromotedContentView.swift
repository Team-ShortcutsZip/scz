//
//  PromotedContentView.swift
//  tinySCZ
//
//  Created by 김보영 on 3/26/24.
//

import SwiftUI

struct PromotedContentView: View {
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            VStack(alignment: .leading, spacing: 24) {
                
                Image("StarterPackImage")
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("ShorcutsZip 개발팀이 추천하는")
                    Text("단축어 스타터팩")
                        .font(.title)
                    
                    // MARK: Divider
                    Capsule()
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                        .foregroundStyle(Color("CharcoalGray").opacity(0.08))
                    
                    Text("새 학기, 새 직장, 또는 새로운 취미를 시작했거나 단축어가 처음인 당신을 위해 모아두었어요\n\n📼 유튜브 영상 저장하기\n그런 영상이 있죠 갑자기 삭제될 것만 같은 영상이 생기는 날...\n그럴 때 사용하기 좋은 단축어입니다.\n\n🔗 와이파이 QRcode로 공유\n일어나서 와이파이 비밀번호 사진찍으러갈 필요X\n\n🌃 인스타 미디어 다운받기\n유튜브 영상 저장하기와 비슷한 이유로 추천합니다.")
                    
                    
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("다른 글 보러가기")
                        .frame(maxWidth: .infinity)
                        .frame(height: 36)
                    
                }
                .buttonStyle(.bordered)
                .padding()
            }
        } // ScrollView
    }
}

#Preview {
    PromotedContentView()
}
