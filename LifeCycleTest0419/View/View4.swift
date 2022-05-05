//
//  View4.swift
//  LifeCycleTest0419
//
//  Created by 亚飞 on 2022/4/23.
//

import SwiftUI

struct View4: View {
    
    @Binding var returnContentViewBool: Bool
    
    var body: some View {
        
        ZStack {
            
            Color.purple.edgesIgnoringSafeArea(.all)
            
            NavigationLink {
                
                View5(returnContentViewBool: $returnContentViewBool)
            } label: {
                
                Text("跳转到View5")
            }

        }
        
    }
}


