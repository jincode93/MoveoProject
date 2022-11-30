//
//  AppInfoView3.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/29.
//

import SwiftUI

struct AppInfoView3: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("appInfo3")
                    .resizable()
                
                NavigationLink(destination: ContentView()) {
                    ZStack {
                        Rectangle()
                            .frame(width: 328, height: 52)
                            .cornerRadius(8)
                            .foregroundColor(.black)
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                }
                .offset(y: 280)
                
                NavigationLink(destination: ContentView()) {
                    Text("Skip")
                        .foregroundColor(.black)
                        .font(.title2)
                }
                .offset(y: 330)
            }
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
        }
    }
}

struct AppInfoView3_Previews: PreviewProvider {
    static var previews: some View {
        AppInfoView3()
    }
}
