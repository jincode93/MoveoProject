//
//  ContentView.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/28.
//

import SwiftUI

extension Color{
    static let mainColor = Color("mainColor")
    static let mainPink = Color("mainPink")
    static let whiteGray = Color("whiteGray")
}

struct ContentView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {

            NavigationView {
                MainView()
            }.tabItem {
                Image(systemName:"house.fill")
                Text("홈")
            }.tag(1)
     
            NavigationView {
                FeedView()
            }.tabItem {
                Image(systemName:"square.on.square.badge.person.crop.fill")
                Text("피드")
            }.tag(2)

//            NavigationView {
//                WriteView()
//            }.tabItem {
//                Image(systemName:"plus.app.fill")
//                Text("글쓰기")
//            }.tag(3)

            NavigationView {
                SearchView()
            }.tabItem {
                Image(systemName:"magnifyingglass")
                Text("찾기")
            }.tag(3)
            
            NavigationView {
                ProfileView()
            }.tabItem {
                Image(systemName:"person.fill")
                Text("프로필")
            }.tag(4)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

