//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Wanmy on 21/10/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.gray)
                .rotationEffect(Angle(degrees: 15))
            VStack{
                Text("To Do List")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                Text("Get Done")
                    .font(.system(size: 40 , weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(.top , 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3 , height: 400)
        .offset(y: -100)    }
}

#Preview {
    HeaderView()
}
