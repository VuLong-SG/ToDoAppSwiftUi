//
//  LoginView.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            //header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.gray)
                    .rotationEffect(Angle(degrees: 15))
                    .offset(y: -100)
                VStack{
                    Text("To Do List")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(.white)
                    Text("Get Done")
                        .font(.system(size: 40 , weight: .bold))
                        .foregroundColor(.white)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 3 , height: 400)
            
            //Login form
            
            //
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}

