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
        
        VStack {
            
            Text("登录页")
            Button("登陆") {
                
                vm.isLogin = true
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
