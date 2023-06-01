//
//  ViewController.swift
//  counter App Lego
//
//  Created by sebashtian rodriguez on 10/10/22.
//

import UIKit
import AVFoundation




class ViewController: UIViewController {
    var soundTrack: AVAudioPlayer?
    var totalLegoCount = 0
    var totalLegoCountTwo = 0
    var mute = false
    
    @IBOutlet weak var labe: UILabel!
    
    @IBOutlet weak var twolable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func add2x4(_ sender: UIButton) {
        totalLegoCount += 1
        labe.text = "you got \(totalLegoCount) bricks"
        globalPlayer(whatSong: "l")
        
    }
    
    @IBAction func sub2x4(_ sender: UIButton) {
        totalLegoCount -= 1
        labe.text = "you got \(totalLegoCount) bricks"
        globalPlayer(whatSong: "l")
    }
    @IBAction func add2x2(_ sender: UIButton) {
        totalLegoCountTwo += 1
        twolable.text = "you got \(totalLegoCountTwo) bricks"
        globalPlayer(whatSong: "l")
    }
    @IBAction func sub2x2(_ sender: UIButton) {
        totalLegoCountTwo -= 1
        twolable.text = "you got \(totalLegoCountTwo) bricks"
        globalPlayer(whatSong: "l")
    }
    
    @IBAction func alowSound(_ sender: UISwitch){
        if sender.isOn {
        mute = true
        }else{
          mute = false
        }
    }
    
    func globalPlayer(whatSong: String){
        if mute == false{
        
        let path =
        Bundle.main.path(forResource: whatSong, ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            soundTrack = try AVAudioPlayer(contentsOf: url)
            soundTrack?.play()
        } catch{
            print("sound did not lode")
        }
        }
    }
}
       
