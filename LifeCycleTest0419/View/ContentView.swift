//
//  ContentView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: PageViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
