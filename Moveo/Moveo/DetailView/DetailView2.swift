//
//  DetailView.swift
//  Moveo
//
//  Created by 이종현 on 2022/11/29.
//

import SwiftUI

struct DetailView2: View {
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    HStack(spacing: 10) {
                        Image("detailView2_2")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 50)
                        
                        
                        VStack(alignment: .leading) {
                            Text("Lime")
                                .foregroundColor(.gray)
                            //.font(.system(size: 12))
                            Text("하루 5km 러닝 셀프 챌린지 도전중 (12일차)")
                                .font(.caption)
                                .bold()
                            //.font(.system(size: 13, weight: .bold))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "bookmark")
                            .padding(.trailing)
                    }
                    
                    
                    
                    Image("detailView2_1")
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
                    //                    Text("Lime")
                    //                        .fontWeight(.bold)
                    //                        .font(.system(size : 12))
                    Text("오늘도 완벽한 러닝을 마쳤습니다! 다음달에는 JTBC 마라톤을 도전할 예정입니다😜 ")
                        .font(.callout)
                        .padding(.top)
                    //.font(.system(size : 11, weight : .semibold))
                    //                }
                    //                .padding(.top, 10)
                    
                    
                    HStack{
                        Image("detailView3")
                            .resizable()
                            .frame(width: 191, height: 35)
                            .padding(.top, 10)
                        Spacer()
                    }
                    
                    Divider()
                        .padding()
                    
                    Image("detailView2_3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 192)
                    
                    
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


struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2()
    }
}
