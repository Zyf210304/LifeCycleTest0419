//
//  ContentView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: PageViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("首页")
                Button("退出登陆") {
                    
                    vm.isLogin = false
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
