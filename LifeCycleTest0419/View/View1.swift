//
//  View1.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI

struct View1: View {
    var body: some View {
        
        ZStack {
            
            Color.gray.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 20){
                
                Text("View1")
                    .foregroundColor(.white)
                
                
                NavigationLink {
                    
                    View2()
                    
                } label: {
                    
                    Text("跳转到view2")
                }
                
                
                
                
            }
        }
        .navigationTitle("普通跳转")
        
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
