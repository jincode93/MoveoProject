//
//  LodingLoginView.swift
//  Moveo
//
//  Created by 진준호 on 2022/11/29.
//

import SwiftUI

struct LodingView: View {
    @State private var mDegree: Double = -180
    @State private var mXAxis: CGFloat = -100
    @State private var dotYAxis: CGFloat = -250
    @State private var dotDegree: Double = -50
    @State private var dotOpacity: Double = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("lodingView")
                    .resizable()
                
                Image("M")
                    .resizable()
                    .frame(width: 35, height: 30)
                    .rotationEffect(Angle(degrees: mDegree))
                    .offset(x: mXAxis, y: -163)
                
                Image("dot")
                    .resizable()
                    .frame(width: 17, height: 13)
                    .rotationEffect(Angle(degrees: dotDegree))
                    .offset(x: -10, y: dotYAxis)
                    .opacity(dotOpacity)
                
                NavigationLink(destination: LoginView()) {
                    ZStack {
                        Rectangle()
                            .frame(width: 328, height: 52)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                        Text("로그인")
                            .font(.title2)
                            .foregroundColor(.mainPink)
                    }
                }
                .offset(y: 200)
                
                Text("회원가입")
                    .foregroundColor(.white)
                    .offset(y:250)
            }
            .onAppear {
                withAnimation(.easeIn(duration: 0.8)) {
                    self.mXAxis = -40
                    self.mDegree = 10
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.mXAxis = -45
                        self.mDegree = 0
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                    self.dotOpacity = 1
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                    withAnimation(.easeIn(duration: 0.5)) {
                        self.dotYAxis = -185
                        self.dotDegree = 0
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct LodingView_Previews: PreviewProvider {
    static var previews: some View {
        LodingView()
    }
}
