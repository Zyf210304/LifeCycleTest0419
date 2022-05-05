//
//  LoginView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var vm: PageViewModel
    
    @State var  text: String = "测试文本"
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 20) {
                
                Text("登录页")
                
                Button("登陆 改变isLogin") {
                    vm.need_authenticate = false
                    vm.isLogin = true
                }
                
//                NavigationLink {
//                    
//                    ContentView()
//                    
//                } label: {
//                    
//                    Text("登陆 跳转")
//                }

                
                Button {
                    
                    text = "文本改变"
                    
                } label: {
                    
                    Text(text)
//                        .foregroundColor(.primary)
                }

                
            }
        }
        .navigationTitle("登录页")
        
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
