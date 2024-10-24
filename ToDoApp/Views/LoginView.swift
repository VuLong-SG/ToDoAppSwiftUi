//
//  LoginView.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "To Do List", subtitle: "Timeless", info: "Tuấn Cùi ft. Playboi Carti", angle: 15, backgroundColor: .gray)
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Login", backgroundColor: .blue) {
                        viewModel.login()
                    }
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

