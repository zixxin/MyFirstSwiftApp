//
//  CircleImage.swift
//  MyFirstApp
//
//  Created by 윤지인 on 2023/01/15.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("scene") // 이미지
            .frame(width:250, height:250)
            .clipShape(Circle()) // 원형으로 만들겠다
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
