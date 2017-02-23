//
//  SimpleAudioPlayer.swift
//  AnimalSounds
//
//  Created by Jeff Grissom on 9/24/16.
//  Copyright © 2016 Jeff Grissom. All rights reserved.
//

import Foundation
import AVFoundation

class SimpleAudioPlayer {
    var effectPlayer: AVAudioPlayer!
    var bgPlayer: AVAudioPlayer!
    
    func playBackground(file name: String, ofType type: String){
        let path = Bundle.main.path(forResource: name, ofType: type)
        do {
            bgPlayer =  try AVAudioPlayer(contentsOf:  URL(fileURLWithPath: path!))
            bgPlayer.numberOfLoops = -1
            bgPlayer.play()
        } catch {
            print("Error")
        }
    }
    
    func stopBackground(){
        if bgPlayer != nil {
            if bgPlayer.isPlaying {
                bgPlayer.stop()
            }
        }
    }
    
    func preload(file name: String, ofType type: String){
        let path = Bundle.main.path(forResource: name, ofType: type)
        do {
            effectPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            effectPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
    }
    
    func playEffect(file name: String, ofType type: String){
        let path = Bundle.main.path(forResource: name, ofType: type)
        do {
            effectPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            effectPlayer.play()
        } catch {
            print("Error")
        }
    }
}
