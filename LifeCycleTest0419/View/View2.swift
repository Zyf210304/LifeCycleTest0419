//
//  View2.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/21.
//

import SwiftUI

struct View2: View {
    
    @State var  gotoView3: Bool = false
    
    @State var navigationTag: String?
    @State var navigationTagView1: String?
    
    @State var toView3Text:String = ""
    
    var body: some View {
        
        ZStack {
            
            Color.purple.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text("View3")
                    .foregroundColor(.white)
                
                
                
                ///tag  跳转
                NavigationLink(tag: "View3", selection: $navigationTag) {
                    
                    View3(view3Text: $toView3Text)
                    
                } label: {
                    
                }.labelsHidden()
                
                

                NavigationLink(tag: "View1", selection: $navigationTagView1) {
                    
                    View1()
                    
                } label: {
                    
                }.labelsHidden()
                
                
                Button {
                    
                    toView3Text = "SwiftUI"
                    navigationTag = "View3"
                    
                } label: {
                    
                    Text("跳转View3传送：SwiftUI")
                    
                }

                Button {
                    
                    toView3Text = "Xcode"
                    navigationTag = "View3"
                    
                } label: {
                    
                    Text("跳转View3传送：Xcode")
                }
                
                
                Button {
                    
                    navigationTagView1 = "View1"
                    
                } label: {
                    
                    Text("跳转View1")
                }
                
                
            }
        }
        .navigationTitle("Tag跳转")
        
        
        
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
