//
//  ViewController.swift
//  test_layout_5
//
//  Created by Alvar Arias on 09/09/16.
//  Copyright © 2016 Alvar Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var barra: SpringImageView!
    
    @IBOutlet weak var premioImg: SpringImageView!
    
    var avance : Float = 0
    
    func barraAvanza() {
        
        avance = avance + 0.10
        
        print("avance",String(avance))
        
     
    // Barra
        barra.hidden = true
        barra.frame = CGRect(x: 44, y: 54, width: 232, height: 26)
        barra.frame = CGRect(x: 44, y: 54, width: barra.frame.width*CGFloat(avance), height: 26)
        barra.hidden = false
        
        //barra.animate()
        
        
        
        //barra.frame = CGRectMake(44, 54, barra.frame.width*0.8, 26)
        //barra.bounds = CGRectMake(0, 0, barra.bounds.width*0.8, 26)
        print("boton Press")
        
        premioImg.animate()
        premioImg.bounds = CGRect(x: 0, y: 0, width: 80, height: 80)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       //questionFrame.frame = CGRectMake(0 , 0, self.view.frame.width, self.view.frame.height * 0.7)
       barra.hidden = true
       barraAvanza()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickBoton(_ sender: AnyObject) {
        
     barraAvanza()
 
        
    }

}

