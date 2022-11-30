//
//  SearchView.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/28.
//

import SwiftUI

struct SearchView: View {
    
    // 검색창(텍스트필드) 기본세팅
    @State private var searchText: String = "오운완"
    
    // 카테고리 별 토글 flag
    @State private var magazineToggle: Bool = true
    @State private var switchGrid = 0

    var body: some View {
        NavigationStack {
            VStack {
                
                // 검색창 뷰
                VStack {
                    VStack {
                        Label {
                            TextField("Search...", text: $searchText)
                        } icon : {
                            Image(systemName: "magnifyingglass")
                                .font(.callout)
                                .fontWeight(.light)
                                .padding(.leading, 5)
                        }
                        .frame(width: 350, height: 40)
                        .background(.gray).opacity(0.3)
                        .cornerRadius(10)
                    }
                }
                .offset(y: 20)
                
                
                
                
                // 카테고리 별 Scroll 뷰
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                            Image("searchActivity")
                                .resizable()
                                .frame(width: 100, height: 75)
                                .onTapGesture {
                                    switchGrid = 0
                                }
                            Image("searchStudy")
                                .resizable()
                                .frame(width: 100, height: 75)
                                .onTapGesture {
                                    switchGrid = 1
                                }
                            Image("searchArt")
                                .resizable()
                                .frame(width: 100, height: 75)
                            Image("searchBook")
                                .resizable()
                                .frame(width: 100, height: 75)
                            Image("searchMental")
                                .resizable()
                                .frame(width: 100, height: 75)
                        }
                    }
                    
                }
                .padding()
                .offset(y: 30)
                Spacer()
                
                
                // 운동 카테고리 Grid 뷰
                VStack(alignment: .leading) {
                    switch switchGrid {
                    case 0 :
                        WorkoutGrid()
                    case 1 :
                        StudyGrid()
                    default :
                        WorkoutGrid()
                    }
                   
                }
                
                .padding(.bottom)
                
                
                
            } // VStack
        }
        
    } // body
} // searchView

struct WorkoutGrid : View {
    var body: some View {
        ScrollView {
            Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                
                // 네비게이션 링크 2개 넘어감
                GridRow {
                    NavigationLink {
                        DetailView1()
                    } label : {
                        Image("searchFeed1")
                            .resizable()
                            .cornerRadius(10.0)
                    }
                    
                    NavigationLink {
                        DetailView2()
                    } label : {
                        Image("searchFeed2")
                            .resizable()
                            .cornerRadius(10.0)
                    }
                }
                
                GridRow {
                    Image("searchFeed3")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("searchFeed4")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("searchFeed5")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("searchFeed6")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("searchFeed7")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("searchFeed8")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("searchFeed1")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("searchFeed2")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("searchFeed3")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("searchFeed4")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
            }
            .frame(width: 350, height: 950)
            .padding()
            
        }
    }
}
struct StudyGrid : View {
    var body: some View {
        ScrollView {
            Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                
                // 네비게이션 링크 2개 넘어감
                GridRow {
                    NavigationLink {
                        DetailView1()
                    } label : {
                        Image("studyGrid1")
                            .resizable()
                            .cornerRadius(10.0)
                    }
                    
                    NavigationLink {
                        DetailView2()
                    } label : {
                        Image("studyGrid2")
                            .resizable()
                            .cornerRadius(10.0)
                    }
                }
                
                GridRow {
                    Image("studyGrid3")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("studyGrid4")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("studyGrid5")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("studyGrid6")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("studyGrid7")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("studyGrid8")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("studyGrid9")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("studyGrid10")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
                GridRow {
                    Image("studyGrid11")
                        .resizable()
                        .cornerRadius(10.0)
                    Image("studyGrid12")
                        .resizable()
                        .cornerRadius(10.0)
                }
                
            }
            .frame(width: 350, height: 950)
            .padding()
            
        }
    }
}






struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
