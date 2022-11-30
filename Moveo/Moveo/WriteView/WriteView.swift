//
//  WriteView.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/29.
//

import SwiftUI
import PhotosUI


struct WriteView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var title: String = ""
    @State private var content: String = ""
    
    // Picker View를 Menu View로 수정 -------------------------------
    var categories = ["카테고리 선택하기", "자기개발", "운동", "공부", "예술", "멘탈케어"]
    @State var index = 0
    @State var selectedCategory = "Red"
    // ------------------------------------------------------------
    
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    var body: some View {
        
        VStack {
            
            ScrollView{

                PhotosPicker(
                    selection: $selectedItem,
                    matching: .images,
                    photoLibrary: .shared()
                ) {
                    ZStack {
                        Image(systemName: "camera")
                            .zIndex(1)
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                        
                        Rectangle()
                            .fill(Color.whiteGray)
                            .frame(width: 340, height: 340)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 7.5)
                                    .stroke(.gray, lineWidth: 1)
                            )
                            .padding(.trailing, 30)
                            .padding(.leading, 30)
                    }
                }
                .onChange(of: selectedItem) { newItem in
                    Task {
                        // Retrieve selected asset in the form of Data
                        if let data = try? await newItem?.loadTransferable(type: Data.self) {
                            selectedImageData = data
                        }
                    }
                }
                
                
                HStack{
                    Text("카테고리 선택")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 30)
                    
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
                            .padding(.trailing, 30)
                    }
                    // ------------------------------------------------------------

                }

            }
            .padding(.horizontal, 30)
            
            HStack{
                Text("제목")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.top, 1)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .offset(x:0 , y: 9)
            
            
            TextField("  제목을 입력해주세요.", text: $title)
                .frame(width: 330, height: 40)
                .background(Color.whiteGray)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 7.5)
                        .stroke(.gray, lineWidth: 1)
                )
                .padding(.trailing, 30)
                .padding(.leading, 30)
            
            HStack{
                Text("내용")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .offset(x:0 , y: 9)
            
            
            TextField("  내용을 입력해주세요.", text: $content)
                .frame(width: 330, height: 150)
                .background(Color.whiteGray)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 7.5)
                        .stroke(.gray, lineWidth: 1)
                )
                .padding(.trailing, 30)
                .padding(.leading, 30)
            
            
            Button("작성 완료") {
                dismiss()
            }
            .foregroundColor(Color.white)
            .font(.title3)
            .fontWeight(.bold)
            .frame(width: 320, height: 40)
            .background(Color("mainColor"))
            .cornerRadius(10)
            .padding(.top, 10)
            
            
        }
    }
}




struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
