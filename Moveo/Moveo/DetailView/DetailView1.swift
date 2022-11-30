//
//  DetailView.swift
//  Moveo
//
//  Created by 이종현 on 2022/11/29.
//

import SwiftUI

struct DetailView1: View {
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    HStack(spacing: 10) {
                        Image("profileView1")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 50)
                        
                        
                        VStack(alignment: .leading) {
                            Text("Junho")
                                .foregroundColor(.gray)
                            //.font(.system(size: 12))
                            Text("집에서 할 수 있는 효과적인 30분 운동법")
                                .font(.caption)
                                .bold()
                            //.font(.system(size: 13, weight: .bold))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "bookmark")
                            .padding(.trailing)
                    }
                    
                    
                    
                    Image("searchFeed1")
                        .resizable()
                        .frame(width: 340, height: 340)
                        .cornerRadius(20)
                    
                    HStack{
                        Image("detailView2")
                            .resizable()
                            .frame(width: 176, height: 15, alignment: .leading)
                        Spacer()
                    }
                    
                    //                HStack(alignment: .top){
                    //                    Text("Junho")
                    //                        .fontWeight(.bold)
                    //                        .font(.callout)
                    //                        .font(.system(size : 12))
                    Text("리프팅 테크닉의 최고수가 되는 것이 목표입니다. 오운완 31일차, 운동은 역시 아침에 하는게 최고👍 ")
                        .font(.callout)
                        .padding(.top, 10)
                    
                    //.font(.system(size : 11, weight : .semibold))
                    //}
                    //.padding(.top, 10)
                    
                    //                Image("detailView4")
                    //                    .resizable()
                    //                    .scaledToFit()
                    //                    .padding(.top, 10)
                    
                    HStack{
                        Image("detailView3")
                            .resizable()
                            .frame(width: 191, height: 35)
                            .padding(.top, 10)
                        Spacer()
                    }
                    
                    Divider()
                        .padding()
                    
                    Image("detailView5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 343, height: 78)
                    
                    
                }
                .padding(.horizontal)
            }
            
            Image("detailView6")
                .resizable()
                .scaledToFit()
                .frame(width: 364, height: 50)
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}


struct DetailView1_Previews: PreviewProvider {
    static var previews: some View {
        DetailView1()
    }
}
