import SwiftUI

struct FeedView: View {
    @State private var likeToggle1 = false
    @State private var markToggle1 = true
    
    @State private var likeToggle2 = true
    @State private var markToggle2 = false
    
    @State private var likeToggle3 = true
    @State private var markToggle3 = true
    
    @State private var likeToggle4 = true
    @State private var markToggle4 = true
    
    // Picker View를 Menu View로 수정 -------------------------------
    var categories = ["전체보기", "자기개발", "운동", "공부", "예술", "멘탈케어"]
    @State var index = 0
    @State var selectedCategory = "Red"
    // ------------------------------------------------------------
    
//    @State var selectedColor = "color"
//     var category = ["전체보기", "자기개발", "운동", "공부", "예술", "멘탈케어"]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //                Text("카테코리별 피드모음")
                    
                    HStack {
                        Spacer()
                        // Picker View를 Menu View로 수정 ---------------------------------
                        Menu {
                            ForEach(Array(categories.enumerated()), id: \.offset){index, category in
                                Button(action: {
                                    self.index = index
                                    self.selectedCategory = category
                                }, label: {
                                    HStack{
                                        Text(category)
                                    }
                                })
                            }
                        } label: {
                            Text(categories[index] + " ▼")
                                .foregroundColor(Color("mainColor"))
                                .scaledToFit()
                                .padding(.trailing, 20)
                        }
                        // ------------------------------------------------------------
                    }
                    
                    
                    VStack {
                        VStack {
                            HStack {
                                Image("Feed_3@2x")
                                    .resizable()
                                    .frame(width: 50, height: 40)
                                
                                VStack {
                                    Text("wego_gym \n4o min")
                                    //                    Text("4o min")
                                }
                                Spacer()
                                //                        .padding(.trailing, 140)
                                Button {
                                    likeToggle1.toggle()
                                } label: {
                                    if likeToggle1 {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                    } else {
                                        Image(systemName: "heart")
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                Button {
                                    markToggle1.toggle()
                                } label: {
                                    if markToggle1 {
                                        Image(systemName: "bookmark.fill")
                                            .foregroundColor(.black)
                                    } else {
                                        Image(systemName: "bookmark")
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            NavigationLink {
                                DetailView3()
                            } label: {
                                Image("Feed_2@2x")
                                    .resizable()
                                //                .aspectRatio(contentMode: .fit)
                                //기준프레임
                                    .frame(width: 340, height: 340)
                                    .cornerRadius(20)
                            }
                            //                .overlay(RoundedRectangle(cornerRadius: 20)
                            //                            .stroke(Color.gray, lineWidth: 2))
                            //                .shadow(radius: 20)
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.mainColor)
                                    .frame(width: 340, height: 40)
                                
                                Text("#운동      오.운.완 3일차 운동은 역시 아침 👍🏻")
                                .foregroundColor(Color.white)                }
                            .padding(.top)
                        }
                        Divider()
                            .frame(height: 35)
                        
                        
                        
                        VStack {
                            VStack {
                                HStack {
                                    Image("Feed_5@2x")
                                        .resizable()
                                        .frame(width: 50, height: 60)
                                    
                                    VStack {
                                        Text("Toeic_990 \n3o min")
                                        //                    Text("4o min")
                                    }
                                    Spacer()
                                    Button {
                                        likeToggle2.toggle()
                                    } label: {
                                        if likeToggle2 {
                                            Image(systemName: "heart.fill")
                                                .foregroundColor(.red)
                                        } else {
                                            Image(systemName: "heart")
                                                .foregroundColor(.black)
                                        }
                                    }
                                    
                                    Button {
                                        markToggle2.toggle()
                                    } label: {
                                        if markToggle2 {
                                            Image(systemName: "bookmark.fill")
                                                .foregroundColor(.black)
                                        } else {
                                            Image(systemName: "bookmark")
                                                .foregroundColor(.black)
                                        }
                                    }
                                    
                                }
                                Image("Feed_8@2x")
                                    .resizable()
                                //                .aspectRatio(contentMode: .fit)
                                    .frame(width: 340, height: 340)                            .cornerRadius(10)
                                //                .overlay(RoundedRectangle(cornerRadius: 20)
                                //                            .stroke(Color.gray, lineWidth: 2))
                                //                .shadow(radius: 20)
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(.mainColor)
                                        .frame(width: 340, height: 40)
                                    
                                    Text("#시험          오늘 순.공 시간 10시간 돌파😆")
                                    .foregroundColor(Color.white)                }
                                .padding(.top)
                            }
                            
                            
                        }
                        Divider()
                            .frame(height: 35)
                        
                        
                        
                        VStack {
                            HStack {
                                Image("Feed_1@2x")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                
                                VStack {
                                    Text("Mbti_enfp \n2 hours")
                                    //                    Text("4o min")
                                }
                                Spacer()
                                Button {
                                    likeToggle3.toggle()
                                } label: {
                                    if likeToggle3 {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                    } else {
                                        Image(systemName: "heart")
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                Button {
                                    markToggle3.toggle()
                                } label: {
                                    if markToggle3 {
                                        Image(systemName: "bookmark.fill")
                                            .foregroundColor(.black)
                                    } else {
                                        Image(systemName: "bookmark")
                                            .foregroundColor(.black)
                                    }
                                }
                                
                            }
                            Image("Feed_6@2x")
                                .resizable()
                            //                .aspectRatio(contentMode: .fit)
                                .frame(width: 340, height: 340)                        .cornerRadius(10)
                            //                .overlay(RoundedRectangle(cornerRadius: 20)
                            //                            .stroke(Color.gray, lineWidth: 2))
                            //                .shadow(radius: 20)
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.mainColor)
                                    .frame(width: 340, height: 40)
                                
                                Text("#취미    새로운 취미에 도전해본 날! 서핑 추천🏄🏻‍♂️")
                                .foregroundColor(Color.white)                }
                            
                            .padding(.top)
                        }
                        Divider()
                            .frame(height: 35)
                        
                        
                        VStack {
                            HStack {
                                Image("Feed_9@2x")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                
                                VStack {
                                    Text("Perfume_lion \n3 hours")
                                    //                    Text("4o min")
                                }
                                Spacer()
                                Button {
                                    likeToggle4.toggle()
                                } label: {
                                    if likeToggle4 {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                    } else {
                                        Image(systemName: "heart")
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                Button {
                                    markToggle4.toggle()
                                } label: {
                                    if markToggle4 {
                                        Image(systemName: "bookmark.fill")
                                            .foregroundColor(.black)
                                    } else {
                                        Image(systemName: "bookmark")
                                            .foregroundColor(.black)
                                    }
                                }
                                
                            }
                            Image("Feed_10@2x")
                                .resizable()
                            //                .aspectRatio(contentMode: .fit)
                                .frame(width: 340, height: 340)                        .cornerRadius(10)
                            //                .overlay(RoundedRectangle(cornerRadius: 20)
                            //                            .stroke(Color.gray, lineWidth: 2))
                            //                .shadow(radius: 20)
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.mainColor)
                                    .frame(width: 340, height: 40)
                                
                                Text("#운동       40분 200CAL! 알차게운동끝👩🏻‍🦰")
                                .foregroundColor(Color.white)                }
                            
                            .padding(.top)
                        }
                        
                        
                        
                        
                        
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
