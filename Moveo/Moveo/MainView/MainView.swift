//
//  MainFeedView.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/28.
//

import SwiftUI

struct MainView: View {
    @State private var alarmToggle1: Bool = true
    @State private var alarmToggle2: Bool = false
    
    // Picker View를 Menu View로 수정 -------------------------------
    var categories = ["자기개발", "운동", "공부", "예술", "멘탈케어"]
    @State var index = 1
    @State var selectedCategory = "Red"
    // ------------------------------------------------------------
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("mainProfile")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                Text("@moveo12_")
                    .font(.title)
                    .bold()
                
                Spacer()
                
//                Image(systemName: "gearshape")
//                    .font(.title)
            }
            HStack {
                Image("mainDatePicker")
                    .resizable()
                    .frame(width: 100, height: 28)
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
                }
                // ------------------------------------------------------------
            }
            if index == 1 {
                Image("mainCalendar1")
                    .resizable()
                    .frame(width: 353, height: 290)
            } else {
                Image("mainCalendar2")
                    .resizable()
                    .frame(width: 353, height: 290)
            }
            
            HStack(alignment: .center) {
                Text("오늘의 일정")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Image(systemName: "plus.square")
                    .font(.title2)
            }
            .padding(.top, 20)
            
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .frame(width: 353, height: 60)
                    .foregroundColor(.mainColor)
                    .cornerRadius(10)
                
                Toggle(isOn: $alarmToggle1) {
                    Text("07:00~08:30 운동")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                }
                .toggleStyle(MyToggleStyle())
                .zIndex(1)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            
            ZStack(alignment: .leading) {
                
                Rectangle()
                    .frame(width: 353, height: 60)
                    .foregroundColor(.mainColor)
                    .cornerRadius(10)
                
                Toggle(isOn: $alarmToggle2) {
                    Text("19:00~21:00 알고리즘 공부")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                }
                .toggleStyle(MyToggleStyle())
                .zIndex(1)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            
            Spacer()
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

struct MyToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 20)
                    .foregroundColor(configuration.isOn ? .green : .red)
                
                Circle()
                    .frame(width: 20)
                    .foregroundColor(.white)
                    .onTapGesture {
                        withAnimation {
                            configuration.$isOn.wrappedValue.toggle()
                        }
                    }
            }
        }
    }
}

struct MainFeedView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
