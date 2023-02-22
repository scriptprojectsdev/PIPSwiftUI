//
//  ContentView.swift
//  PIPSwiftUI
//
//  Created by Erick Del Orbe on 2/21/23.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var isVideoPresented = false
    
    var body: some View {
        Button {
            isVideoPresented.toggle()
        } label: {
            Text("Play test video")
        }.fullScreenCover(isPresented: $isVideoPresented) {
            CustomPlayer(player: AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4")!), isVideoPresented: $isVideoPresented).ignoresSafeArea()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
