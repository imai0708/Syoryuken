//
//  ViewController.swift
//  Syoryuken
//
//  Created by 今井菜月 on 2022/10/19.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Ryu: UIImageView!  //リュウの画像
    var imageArrayAttack : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "attak1")
        Ryu.image = image
       
        
        while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
        }
      
        // Do any additional setup after loading the view.
    }


    @IBAction func activation(_ sender: Any) {
        Ryu.animationImages = imageArrayAttack
        Ryu.animationDuration = 2
        Ryu.animationRepeatCount = 1
        Ryu.startAnimating()
        
    }
    
}

    
