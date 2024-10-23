//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Wanmy on 21/10/24.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String
    var subtitle: String
    var info: String
    var angle: Double
    var backgroundColor: Color
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                Text(title)
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.black)
                Text(subtitle)
                    .font(.system(size: 40 , weight: .bold))
                    .foregroundColor(.black)
                Text(info)
                    .font(.system(size: 24))
                    .foregroundStyle(.primary)
                    .foregroundColor(.red)
                    .italic()
            }
            .padding(.top , 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3 , height: 450)
        .offset(y: -150)    }
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", info: "Tuấn Cùi ft. Playboi Carti", angle: 15, backgroundColor: .gray)
}
