//
//  PIPSwiftUIApp.swift
//  PIPSwiftUI
//
//  Created by Erick Del Orbe on 2/21/23.
//

import SwiftUI
import AVFoundation

@main
struct PIPSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        try? AVAudioSession.sharedInstance().setCategory(.playback)
        try? AVAudioSession.sharedInstance().setActive(true)
    }
}
