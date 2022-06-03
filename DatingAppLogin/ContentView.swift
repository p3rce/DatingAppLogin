//
//  ContentView.swift
//  DatingAppLogin
//
//  Created by Pierce Goulimis on 2022-06-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            //Create brand linear gradient
            LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1"), Color("Color2")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            if UIScreen.main.bounds.height > 800 {
                Home()
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    Home()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var index = 0
    
    var body: some View {
        VStack {
            //Heart image
            Image("logo")
                .resizable()
                .frame(width: 200, height: 180)
            
            HStack {
                
                Button {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                        
                        self.index = 0
                        
                    }
                    
                    
                } label: {
                    Text("Login")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }.background(self.index == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                
                
                Button {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                        
                        self.index = 1
                    }
                    
                } label: {
                    Text("Sign Up")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }.background(self.index == 1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                
                
                

                
            }
            .background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            if self.index == 0 {
                Login()
            } else {
                SignUp()
            }
            
            if self.index == 0 {
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .foregroundColor(.white)
                }
                .padding(.top, 20)
            }
            
            
            HStack {
                
                Button {
                    
                } label: {
                    Image("fb")
                        .renderingMode(.original)
                        .padding()
                }.background(Color.white)
                    .clipShape(Circle())
                
                Button {
                    
                } label: {
                    Image("google")
                        .renderingMode(.original)
                        .padding()
                }.background(Color.white)
                    .clipShape(Circle())
                    .padding(.leading, 25)

            }
            .padding(.top, 15)

            
        }
        .padding()
    }
}

struct Login: View {
    
    @State var userEmail = ""
    @State var userPassword = ""
    
    var body: some View {
        VStack {
            VStack {
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Email Address", text: $userEmail)
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Password", text: $userPassword)
                    
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                        
                    }

                    
                    
                }.padding(.vertical, 20)

                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button {
                
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(
                
                LinearGradient(gradient: .init(colors: [Color("Color2"), Color("Color1"), Color("Color")]), startPoint: .leading, endPoint: .trailing)
                
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)

        }
    }
}

struct SignUp: View {
    
    @State var userEmail = ""
    @State var userPassword = ""
    @State var userPasswordConfirm = ""
    
    var body: some View {
        VStack {
            VStack {
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Email Address", text: $userEmail)
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Password", text: $userPassword)
                    
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                        
                    }

                    
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Confirm Password", text: $userPasswordConfirm)
                    
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                        
                    }

                    
                    
                }.padding(.vertical, 20)

                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(
                
                LinearGradient(gradient: .init(colors: [Color("Color2"), Color("Color1"), Color("Color")]), startPoint: .leading, endPoint: .trailing)
                
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)

        }
    }
}
