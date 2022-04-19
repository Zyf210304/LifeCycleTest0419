//
//  IntroductionView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

struct IntroductionView: View {
    
    @EnvironmentObject var vm: PageViewModel
    
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("引导页")
                Button("启动") {
                    
                    vm.App_first = false
                }
            }
        }
        
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
