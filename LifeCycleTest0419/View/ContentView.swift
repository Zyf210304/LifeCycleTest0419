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
    @Environment(\.dismiss) var dismiss
    
    @State var gotoView4: Bool = false
    
    
    @State private var showingSheet = false
    
    var body: some View {
        
        NavigationView {
            

            if vm.need_authenticate {
                
                Text("认证")
                    .onAppear {
                        
                        authenticate()
                    }
                
            } else {
               
 

            ZStack {
                
                Color.orange.edgesIgnoringSafeArea(.all)
                VStack(spacing: 20) {
                    
                    Text("首页")
                    
                    Button("退出登陆 改变isLogin") {
                        
                        vm.isLogin = false
                    }
                    
                    Button("退出登陆 Dismiss") {
                        
                        dismiss()
                    }
                    
                   

                    
                    NavigationLink {
                        
                        View1()
                        
                    } label: {
                        
                        Text("跳转到view1 单向普通跳转")
                    }
                    
                    //通过bool值改变调整转
                    HStack(spacing: 0) {
                        
                      
                        
                        NavigationLink("", isActive: $gotoView4) {
                            
                            View4(returnContentViewBool: $gotoView4)
                        }
                        .background {
                            Color.black
                        }
                        
                        Button {
                            
                            gotoView4.toggle()
                            
                        } label: {
                            
                            Text("通过bool值跳转,多层跳转返回首页")
                        }
                    }
                   
                   
                    Button("Show Sheet") {
                                self.showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        View7()
                    }
                    
                    
                    
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
