//
//  CustomPlayer.swift
//  PIPSwiftUI
//
//  Created by Erick Del Orbe on 2/21/23.
//

import SwiftUI
import AVKit

struct CustomPlayer: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = AVPlayerViewController
    
    var player: AVPlayer
    @Binding var isVideoPresented: Bool
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let vc = AVPlayerViewController()
        vc.player = self.player
        vc.delegate = context.coordinator
        vc.player?.play()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
    
    // MARK: - Coordinator
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, AVPlayerViewControllerDelegate {
        let parent: CustomPlayer
        
        init(_ parent: CustomPlayer) {
            self.parent = parent
        }
        
        func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
            parent.isVideoPresented = false
            print("**************** willStart")
        }
        
        func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
            print("**************** didStart")
        }
        
        func playerViewControllerWillStopPictureInPicture(_ playerViewController: AVPlayerViewController) {
            parent.isVideoPresented = true
            print("**************** willStop")
        }
        
        func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController) {
            print("**************** didStop")
        }
        
        func playerViewControllerRestoreUserInterfaceForPictureInPictureStop(_ playerViewController: AVPlayerViewController) async -> Bool {
            parent.isVideoPresented = true
            print("**************** restore UI")
            return true
        }
    }
}

