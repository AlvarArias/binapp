//
//  resumen.swift
//  test_layout_5
//
//  Created by Alvar Arias on 19/09/16.
//  Copyright © 2016 Alvar Arias. All rights reserved.
//

import UIKit
import AVFoundation

class resumenViewController: UIViewController {
    
    // Label botones
    @IBOutlet weak var botonPlay: SpringButton!
    
    @IBOutlet weak var botonVolver: SpringButton!
    
    // Labels
    @IBOutlet weak var labelPuntaje: UILabel!
    
    @IBOutlet weak var labelOK: UILabel!
    
    @IBOutlet weak var labelFel: UILabel!
    
    // conector imagenes
    @IBOutlet weak var imagenAvatar: UIImageView!
    
    @IBOutlet weak var imagenNivel: UIImageView!
    
    @IBOutlet weak var barraNivel: UIImageView!
    
    @IBOutlet weak var labelAvance: DesignableLabel!
    
    
    // Funciones
    
    var audioPlayer = AVAudioPlayer()
    
    func avanzaBarra() {
        
        let porcent = resultado.avancePorcent*100
        let porcentRound = Double(porcent)
        
        print("procentaje de correctas",String(porcent))
        
        // Barra
        //barraNivel.hidden = true
        //self.barraNivel.bounds = CGRectMake(0, 0, 110, 32)
        //self.barraNivel.bounds = CGRectMake(0, 0, 55, 32)
        //barraNivel.hidden = false
        
        labelAvance.text = String(Int(round(porcentRound)))+" % nivå"
        
        
    }
    
    func playSonido(url: String) {
        
        let urlSonido2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(url, ofType: "wav")!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: urlSonido2)
            audioPlayer.play()
            
        } catch {
            print("Something went wrong!")
        }
        
    }
    
    
    func muestraAvatar() {
        
        if resultado.avatar == 1 {
            imagenAvatar.image = UIImage (named: "arbetsbi_HR")
            
        }
        
        if resultado.avatar == 2 {
            imagenAvatar.image = UIImage (named: "drottningbi")
            
        }
        
        if resultado.avatar == 3 {
            imagenAvatar.image = UIImage (named: "dronare")
            
            
        }
        
    }
    
    
        func muestraNivel() {
            
            if resultado.nivelJug == 1 {
                imagenNivel.image = UIImage (named: "bikupa_HR")
                barraNivel.image = UIImage ( named: "barra_panal")
            
                //avanzaBarra()
            
            }
            
            if resultado.nivelJug == 2 {
                imagenNivel.image = UIImage (named: "honungHR")
                barraNivel.image = UIImage ( named: "barra_miel")
                
                //avanzaBarra()
            
            }
            
            if resultado.nivelJug == 3 {
                imagenNivel.image = UIImage (named: "vaxkaka")
                barraNivel.image = UIImage (named: "barra_cera")
                
                //avanzaBarra()
            
            }
        
            //avanzaBarra()
            
        }
    
    
    func siguienteNivel() {
        
        // condicion para pasar al siguiente nivel
        
        if PregCorrecta > PregErrada {
           
            // Aumenta en nivel del juego
            nivelJuego = nivelJuego + 1
            //nivelJuego = resultado.nivelJug
            
            //confInicial = false
            if nivelJuego == 2 {
                print("Nuevo nivel de juego")
                print(String(nivelJuego))
                botonPlay.hidden = false
            }
            
            if nivelJuego == 3 {
                print("Nuevo nivel de juego")
                print(String(nivelJuego))
                botonPlay.hidden = false
            }
        
            
            if nivelJuego > 3 {
                
                print("Fin de juego")
                print(String(nivelJuego))
                
                // oculta el boton play
                botonPlay.hidden = true
                
            }
            
            
            
        }
     
        else {
            print("Mismo nivel de juego")
            print(String(nivelJuego))
            // muestra el boton volver
            botonVolver.hidden = false
            //botonPlay.hidden = true
            botonVolver.animate()
            
            confInicial = true
            
        }
        
    }
    
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Oculta boton play
        //botonPlay.hidden = true
        
        // Sonido
        playSonido("Song2")
        
        // Labels resultados
        labelPuntaje.text = String(resultado.ultimoPuntaje)+" poäng"
        labelOK.text = String(resultado.correctas)+" rätt"
        labelFel.text = String(resultado.fel)+" fel"
        
        //Imagenes al comenzar
        muestraAvatar()
        muestraNivel()
        
        avanzaBarra()
        
        // Func Siguiente nivel
        siguienteNivel()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickPlay(_ sender: AnyObject) {
        // detiene la melodia
        audioPlayer.stop()
    }
    
    @IBAction func clickVolver(_ sender: AnyObject) {
        // detiene la melodia
        audioPlayer.stop()
    }
    
}
