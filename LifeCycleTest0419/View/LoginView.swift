//
//  LoginView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var vm: PageViewModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 20) {
                
                Text("登录页")
                
                Button("登陆 改变isLogin") {
                    vm.need_authenticate = false
                    vm.isLogin = true
                }
                
                NavigationLink {
                    
                    ContentView()
                    
                } label: {
                    
                    Text("登陆 跳转")
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
