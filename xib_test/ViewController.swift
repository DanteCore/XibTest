//
//  ViewController.swift
//  xib_test
//
//  Created by Macbook on 6/14/15.
//  Copyright (c) 2015 Ciklum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var personViewOutlet: CustomPersonView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personViewOutlet.contentView.layer.cornerRadius = 10
        personViewOutlet.contentView.layer.borderWidth = 3
        personViewOutlet.contentView.layer.borderColor = UIColor.grayColor().CGColor
        
        personViewOutlet.personLabel.text = "Hi Serhii"
        personViewOutlet.personImage.layer.masksToBounds = true
        personViewOutlet.personImage.image = UIImage(named: "Serhii")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

