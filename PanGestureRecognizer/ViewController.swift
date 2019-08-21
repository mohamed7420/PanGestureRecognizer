//
//  ViewController.swift
//  PanGestureRecognizer
//
//  Created by Mohamed on 8/21/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var graeenView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePanGesture(sender:)))
        
        graeenView.addGestureRecognizer(gesture)
        
    }
    
    
    @objc func handlePanGesture(sender:UIPanGestureRecognizer){
        
        let pointOfView = sender.location(in: view)
        
        graeenView.center = pointOfView
        
        print(pointOfView)
        
        
    }


}

