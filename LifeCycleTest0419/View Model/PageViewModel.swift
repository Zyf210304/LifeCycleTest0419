//
//  SwiftUIView.swift
//  LifeCycleTest0419
//
//  Created by 张亚飞 on 2022/4/19.
//

import SwiftUI

class PageViewModel: ObservableObject {
   

    @Published var need_authenticate: Bool = true
    @AppStorage("APP_Login") var isLogin: Bool = false

    @AppStorage("APP_FIRST") var App_first: Bool = true
    
}

