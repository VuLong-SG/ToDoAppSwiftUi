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
            HeaderView(title: "Resgiter", subtitle: "Non Timeless", info: "Tuấn Cùi ft. Playboi Carti", angle: -15, backgroundColor: .teal)
            
            Form{
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Create account", backgroundColor: .green) {
                }
            }
            .offset(y: -95)
            
            Spacer()
        }
        .offset(y: -20)
        
//        VStack{
//            Text("Already have an account?")
//                .foregroundColor(.black)
//            NavigationLink("Go to login", destination: LoginView())
//                .foregroundColor(.blue)
//        }
        .padding(.bottom, 0)
    }
}

#Preview {
    RegisterView()
}
