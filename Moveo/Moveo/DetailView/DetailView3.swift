//
//  DetailView.swift
//  Moveo
//
//  Created by 이종현 on 2022/11/29.
//

import SwiftUI

struct DetailView3: View {
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    HStack(spacing: 10) {
                        Image("Feed_3@2x")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 50)
                        
                        
                        VStack(alignment: .leading) {
                            Text("wego_gym")
                                .foregroundColor(.gray)
                            //.font(.system(size: 12))
                            Text("오.운.완 3일차 운동은 역시 아침")
                                .font(.caption)
                                .bold()
                            //.font(.system(size: 13, weight: .bold))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "bookmark")
                            .padding(.trailing)
                    }
                    
                    
                    
                    Image("Feed_2@2x")
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
                    Text("역시 운동은 아침에 가야 사람이 없어서 좋네요👍 ")
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


struct DetailView3_Previews: PreviewProvider {
    static var previews: some View {
        DetailView3()
    }
}
