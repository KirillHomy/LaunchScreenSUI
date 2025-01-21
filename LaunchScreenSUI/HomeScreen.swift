//
//  HomeScreen.swift
//  LaunchScreenSUI
//
//  Created by Kirill Khomicevich on 21.01.2025.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("bg")
                    .ignoresSafeArea()
                
                VStack {
                    Text("iOS Developer")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Text("Khomicevich Kirill")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
            }
            .navigationTitle("Home")
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    HomeScreen()
}

