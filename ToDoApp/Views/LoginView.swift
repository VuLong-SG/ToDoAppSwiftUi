//
//  LoginView.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "To Do List", subtitle: "Timeless", info: "Tuấn Cùi ft. Playboi Carti", angle: 15, backgroundColor: .gray)
                Form{
                    TextField("Email address", text:$email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Login", backgroundColor: .blue) {
                        
                    }
                    .padding()

                }
                .offset(y: -95)
                
                VStack{
                    Text("New here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 10)
                
                Spacer()
                //Wanwamy
                //Wanmy Mac
            }
        }
    }
}

#Preview {
    LoginView()
}

