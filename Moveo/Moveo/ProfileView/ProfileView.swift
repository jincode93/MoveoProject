//
//  ProfileView.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/28.
//

import SwiftUI

struct ProfileView: View {
    var columns : [GridItem] = Array(repeating: GridItem(.flexible(), spacing: nil, alignment: nil), count: 2)
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack(spacing: 15) {
                        Text("@moveo12_")
                            .font(.title2)
                            .bold()
                        Spacer()
                        NavigationLink {
                            WriteView()
                        } label: {
                            Image(systemName: "plus.circle")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                        }

                        Image(systemName: "tray.full")
                            .font(.title2)
                            .bold()
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .bold()
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    HStack(spacing: 50) {
                        Image("profileView1")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        Followers(text1: "4", text2: "게시물")
                        Followers(text1: "110", text2: "멘토")
                        Followers(text1: "120", text2: "멘티")
                    }
                    
                    .padding(10)
                    Text("하루도 빠짐없이 오운완!")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.bottom)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            Image("profileView2")
                            Image("profileView3")
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.gray)
                                .opacity(0.5)
                                .font(.system(size: 25))
                        }
                        .padding(.leading, 20)
                    }
                    .padding(.bottom)
                    Text("Motivators")
                        .font(.system(size: 15, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Motivators(imageName: "profileViewSon", name: "Sonny__")
                            Motivators(imageName: "profileViewElon", name: "@elonmusk")
                            Motivators(imageName: "profileViewKim", name: "Queen_kr")
                            Motivators(imageName: "profileViewKang", name: "Legend_B")
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.bottom)
                    Divider()
                        .frame(width: 300, height: 0.75)
                        .overlay(.black)
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            MyPost(imageName: "profileView4")
                            MyPost(imageName: "profileView5")
                            MyPost(imageName: "profileView6")
                            MyPost(imageName: "profileView7")
                            MyPost(imageName: "profileView8")
                            
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct Followers : View {
    var text1 : String
    var text2 : String
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            Text(text1)
                .font(.system(size: 16, weight: .semibold))
            Text(text2)
                .font(.system(size: 15))
        }
    }
}

struct Motivators : View {
    var imageName : String
    var name : String
    var body: some View {
        VStack(spacing: 5) {
            Image(imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            Text(name)
                .font(.system(size: 13, weight: .semibold))
                .padding(.bottom, 1)
            Button {
                //
            } label: {
                Text("팔로우")
                    .font(.system(size: 10, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 50)
                    .background(Color("mainColor"))
                    .cornerRadius(50)
            }
        }
        .frame(width: 80, height: 110)
        
    }
}

struct MyPost : View {
    var imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}




