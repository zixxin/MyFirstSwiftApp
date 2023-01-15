//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 윤지인 on 2023/01/15.
//

import SwiftUI

var isTest = true;

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top) // 화면의 상단 가장자리까지 확대 (safeArea 무시)
                .frame(height: 300) // width 생략시 뷰 width에 맞춰짐
            
            CircleImage()
                .offset(y: -130) // y축 기준 -130 offset -> 이를 통해 MapView와 겹쳐서 보이게 됨
                .padding(.bottom, -130) // 뷰 하단을 기준으로 -130만큼 패딩 지정 -> 아래 Text와의 간격 좀 더 좁게 조정
         
            VStack(alignment: .leading) { // Vertical Stack
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.green)
                HStack { // Horizontal Stack
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer() // 최대 여백 설정
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline) // HStack 내부 전체에 해당 폰트 적용
                .foregroundColor(.secondary) // HStack 내부 전체에 해당 컬러 적용
                
                Divider() // 구분선 추가
                
                // 부가 설명 추가
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Button(
                action: {
                    isTest.toggle()
                },
                label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                }
            )
            
//            Divider() // 구분선 추가
            
//            Toggle(
//                "toogle = \(isTest.description)",
//                isOn: $isTest
//            )
            
            List{
                Section(header:Text("HEAD"), footer: Text("FOOT")) {
                    Text("Item 1")
                    Text("Item 2")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
