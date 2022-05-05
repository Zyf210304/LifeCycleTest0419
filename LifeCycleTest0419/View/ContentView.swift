//
//  ContentView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI
import LocalAuthentication

struct ContentView: View {
    
    @EnvironmentObject var vm: PageViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            if vm.need_authenticate {
                
                Text("认证")
                    .onAppear {
                        
                        authenticate()
                    }
                
            } else {
               
                Color.orange.edgesIgnoringSafeArea(.all)
                VStack(spacing: 20) {
                    
                    Text("首页")
                    
                    Button("退出登陆 改变isLogin") {
                        
                        vm.isLogin = false
                    }
                    
                    Button("退出登陆 Dismiss") {
                        
                        self.presentationMode.wrappedValue.dismiss()
                    }
                    
                }
                
            }
            
            
        }
    }
    
    func authenticate() {
        
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            let reson = "我们需要解锁您的数据"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reson) { success, authenticationError in
                
                //身份认证完成
                DispatchQueue.main.async {
                    
                    if success {
                        // 认证成功
                        
                        vm.need_authenticate = false
                    } else {
                        
                        //认证失败
                        vm.isLogin = false
                    }
                }
                
            }
        } else {
            
            //没有生物识别
            vm.isLogin = false
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
