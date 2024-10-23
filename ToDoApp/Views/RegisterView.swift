//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Resgiter", subtitle: "Non Timeless", info: "Tuấn Cùi ft. Playboi Carti", angle: -15, backgroundColor: .blue)
            
            Form{
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                        Text("Register")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            .offset(y: -95)
            
            Spacer()
        }
        
//        VStack{
//            Text("Already have an account?")
//                .foregroundColor(.black)
//            NavigationLink("Go to login", destination: LoginView())
//                .foregroundColor(.blue)
//        }
        .padding(.bottom, 10)
    }
}

#Preview {
    RegisterView()
}
