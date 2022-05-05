//
//  View5.swift
//  LifeCycleTest0419
//
//  Created by 亚飞 on 2022/4/23.
//

import SwiftUI

struct View5: View {
    
    @Binding var returnContentViewBool: Bool
    var body: some View {
        
        ZStack {
            
            Color.orange.edgesIgnoringSafeArea(.all)
            
            NavigationLink {
                
                View6(returnContentViewBool: $returnContentViewBool)
            } label: {
                
                Text("跳转到View6")
            }
        }
        
        
        
    }
}
