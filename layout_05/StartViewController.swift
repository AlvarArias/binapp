//
//  StartViewController.swift
//  test_layout_5
//
//  Created by Alvar Arias on 03/10/16.
//  Copyright © 2016 Alvar Arias. All rights reserved.
//

import UIKit
import AVFoundation

class StartViewController: UIViewController {

   
    
    @IBOutlet weak var botonPlay: SpringButton!
    
    @IBOutlet weak var botonPreg: UIButton!
    
    @IBOutlet weak var botonInfo: UIButton!
    
    var audioPlayer = AVAudioPlayer()
    
    func playSonido(url: String) {
        
        let urlSonido2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource( url, ofType: "wav")!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: urlSonido2)
            audioPlayer.play()
            
        } catch {
            print("Something went wrong!")
        }
        
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        //playSonido("Chirp")
        
        
        
        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func clickPlay(_ sender: AnyObject) {
        
    playSonido("Chirp")
        
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
