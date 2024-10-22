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
    @State var isLogin = false
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView()
                //Login form
                
                Form{
                    TextField("Email address", text:$email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                            Text("Login")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }

                }
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

