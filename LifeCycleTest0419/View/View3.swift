//
//  View3.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI

struct View3: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var view3Text:String
    
    var body: some View {
        
        ZStack {
            
            Color.orange.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text("View3")
                    .foregroundColor(.white)
                
                Text("从view2传过来\(view3Text)")
                
            }
            
            
            Button {
                
                dismiss()
                
            } label: {
                
                Image(systemName: "chevron.left")
                    .font(.title2.bold())
                    .foregroundColor(.primary)
                    .frame(width: 50, height: 50)
                    .background {
                        Color.red
                    }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .navigationBarHidden(true)
        
    }
}


