//
//  LifeCycleTest0419App.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

@main
struct LifeCycleTest0419App: App {
    
    @StateObject var vm = PageViewModel()
    
    
    var body: some Scene {
        
        WindowGroup {
           
            if vm.App_first {
                
                IntroductionView().environmentObject(vm)
                    .transition(AnyTransition.scale.animation(.easeIn(duration: 0.2)))
                    
                
            } else {
                
                if vm.isLogin {
                    
                    ContentView().environmentObject(vm)
                        .transition(AnyTransition.scale.animation(.easeInOut(duration: 0.2)))
                    
                } else {
                 
                    LoginView().environmentObject(vm)
                        .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.2)))
                }
                
                
            }
        }
    }
}
