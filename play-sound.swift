// play-sound.swift

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(resource: "note\(sender.tag)", ext: "wav")
    }
    
    func playSound(resource: String, ext: String) {
        let soundURL = Bundle.main.url(forResource: resource, withExtension: ext)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}
