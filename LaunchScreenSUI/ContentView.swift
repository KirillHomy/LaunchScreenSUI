//
//  ContentView.swift
//  LaunchScreenSUI
//
//  Created by Kirill Khomicevich on 21.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowHomePage = false
    @State private var scaleImage = 1.0
    @State private var opacity = 1.0
    
    var body: some View {
        ZStack {
            if isShowHomePage {
                HomeScreen()
            } else {
                Color("bg")
                Image("alarm")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .scaleEffect(scaleImage)
                    .opacity(opacity)
            }
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeOut(duration: 1)) {
                scaleImage = 0.5
            }
            withAnimation(.easeInOut(duration: 1).delay(1)) {
                scaleImage = 100
                opacity = 0
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isShowHomePage.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
