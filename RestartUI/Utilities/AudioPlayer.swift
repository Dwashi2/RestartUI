//
//  AudioPlayer.swift
//  RestartUI
//
//  Created by Daniel Washington Ignacio on 29/10/23.
//

import Foundation
import AVFoundation


var audioPlayer: AVAudioPlayer?

func playSund(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}
