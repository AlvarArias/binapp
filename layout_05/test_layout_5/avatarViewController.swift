//
//  launchViewController.swift
//  test_layout_5
//
//  Created by Alvar Arias on 15/09/16.
//  Copyright © 2016 Alvar Arias. All rights reserved.
//

import UIKit
import AVFoundation

class avatarViewController: UIViewController {
    
    @IBOutlet weak var labelBotonPlay: SpringButton!
    
    @IBOutlet weak var labelStart: UILabel!
    
    @IBOutlet weak var labelClikAvatar: UILabel!
    
    // Botones
    @IBOutlet weak var botonArbetsbi: SpringButton!
    
    @IBOutlet weak var botonDrottningbi: SpringButton!
    
    @IBOutlet weak var botonDronare: SpringButton!
    
    @IBOutlet weak var newArbetsbi: SpringButton!

    @IBOutlet weak var newDrottningbi: SpringButton!
    
    @IBOutlet weak var newDronare: SpringButton!
    
    @IBOutlet weak var newLabelDronare: SpringLabel!
    
    
    // Labels
    @IBOutlet weak var labelArbetsbi: SpringLabel!
    
    @IBOutlet weak var labelDrottningsbi: SpringLabel!
    
    @IBOutlet weak var labelDronare: SpringLabel!
    
    @IBOutlet weak var newLabelArbestsbi: SpringLabel!
    
    @IBOutlet weak var newLabelDrottningbi: SpringLabel!
    
    
    // Fondos
    @IBOutlet weak var panel1: UIImageView!
    @IBOutlet weak var panel2: UIImageView!
    @IBOutlet weak var panel3: UIImageView!
    

    // Variables y funciones
    
    var audioPlayer = AVAudioPlayer()
    
    func playSonido (url: String) {
        
        let urlSonido2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(url, ofType: "wav")!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: urlSonido2)
            audioPlayer.play()
            
        } catch {
            print("Something went wrong!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        labelBotonPlay.hidden = true
        labelStart.hidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func clickNewArbestbi(_ sender: AnyObject) {
        
        //Oculta las otras 2 opciones
        newDrottningbi.hidden = true
        newLabelDrottningbi.hidden = true
        panel2.hidden = true
        
        newDronare.hidden = true
        newLabelDronare.hidden = true
        panel3.hidden = true
        
        // Selecciona avatar 1
        labelBotonPlay.hidden = false
        labelStart.hidden = false
        labelClikAvatar.hidden = true
        labelBotonPlay.animate()
        
        resultado.avatar = 1
        
        // sonido
        playSonido("Zap")
        
        
    }
    
    //Antigua
    @IBAction func clickAvatar1(_ sender: AnyObject) {
        
        //Oculta las otras 2 opciones
        botonDrottningbi.hidden = true
        labelDrottningsbi.hidden = true
        panel2.hidden = true
        
        botonDronare.hidden = true
        labelDronare.hidden = true
        panel3.hidden = true
        
        // Selecciona avatar 1
        labelBotonPlay.hidden = false
        labelStart.hidden = false
        labelClikAvatar.hidden = true
        labelBotonPlay.animate()
        
        resultado.avatar = 1
        
        // sonido
        playSonido("Zap")
        
    }
 
     // Seleciona avatar Drottningbi
    
    @IBAction func clickNewDrottningbi(_ sender: AnyObject) {
        
        //Oculta las otras 2 opciones
        newArbetsbi.hidden = true
        newLabelArbestsbi.hidden = true
        panel1.hidden = true
        
        newDronare.hidden = true
        newLabelDronare.hidden = true
        panel3.hidden = true
        
        labelBotonPlay.hidden = false
        labelStart.hidden = false
        labelClikAvatar.hidden = true
        labelBotonPlay.animate()
        
        resultado.avatar = 2
        
        // sonido
        playSonido("Zap")
        
    }
    
    //antigua
    @IBAction func clickAvatar2(_ sender: AnyObject) {
        
        //Oculta las otras 2 opciones
        botonArbetsbi.hidden = true
        labelArbetsbi.hidden = true
        panel1.hidden = true
        
        botonDronare.hidden = true
        labelDronare.hidden = true
        panel3.hidden = true
       
        labelBotonPlay.hidden = false
        labelStart.hidden = false
        labelClikAvatar.hidden = true
        labelBotonPlay.animate()
        
        resultado.avatar = 2
    
        // sonido
        playSonido("Zap")
        
    }
    
     // Seleciona avatar Dronare
    
    @IBAction func clickNewDronare(_ sender: AnyObject) {
        
        //Oculta las otras 2 opciones
        newArbetsbi.hidden = true
        newLabelArbestsbi.hidden = true
        panel1.hidden = true
        
        newDrottningbi.hidden = true
        newLabelDrottningbi.hidden = true
        panel2.hidden = true
        
        // botones
        labelBotonPlay.hidden = false
        labelStart.hidden = false
        labelClikAvatar.hidden = true
        labelBotonPlay.animate()
        
        resultado.avatar = 3
        
        // sonido
        playSonido("Zap")
    }
    
    //Antigua
    @IBAction func clickAvatar3(_ sender: AnyObject) {
        
        //Oculta las otras 2 opciones
        botonArbetsbi.hidden = true
        labelArbetsbi.hidden = true
        panel1.hidden = true
        
        botonDrottningbi.hidden = true
        labelDrottningsbi.hidden = true
        panel2.hidden = true
        
        // botones
        labelBotonPlay.hidden = false
        labelStart.hidden = false
        labelClikAvatar.hidden = true
        labelBotonPlay.animate()
        
        resultado.avatar = 3
        
        // sonido
        playSonido("Zap")
    
    }
    
    
}
