//
//  LoginViewViewModel.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//
import FirebaseAuth
import Foundation


class LoginViewViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""

    init() {

    }
    
    func login() {
        guard validate()
        else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty ,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Please enter email and password"
            return false
        }
        guard email.contains("@") && email.contains(".")
        else {
            errorMessage = "Please enter a valid email"
            return false
        }
        print("called login")
        return true
    }
}
