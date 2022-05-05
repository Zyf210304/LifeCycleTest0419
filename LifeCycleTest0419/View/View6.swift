//
//  View6.swift
//  LifeCycleTest0419
//
//  Created by 亚飞 on 2022/4/23.
//

import SwiftUI

struct View6: View {
    
    @Binding var returnContentViewBool: Bool
    
    var body: some View {
       
        ZStack {
            
            Color.gray.edgesIgnoringSafeArea(.all)
            
            Button {
                
                returnContentViewBool.toggle()
                
            } label: {
                
                Text("返回首页")
            }

        }
    }
}
