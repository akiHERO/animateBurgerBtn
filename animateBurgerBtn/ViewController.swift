//
//  ViewController.swift
//  animateBurgerBtn
//
//  Created by akiHERO on 2015/11/13.
//  Copyright © 2015年 akiHERO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var button: HamburgerButton! = nil
    let size = UIScreen.mainScreen().bounds

    
    @IBOutlet weak var posText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 38.0 / 255, green: 151.0 / 255, blue: 68.0 / 255, alpha: 1)
        
        self.button = HamburgerButton(frame: CGRectMake(self.size.width/2 - 27, self.size.width/2 - 27, 54, 54))
        self.button.addTarget(self, action: "toggle:", forControlEvents:.TouchUpInside)
        
        self.view.addSubview(button)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle  {
        return .LightContent
    }
    
    func toggle(sender: AnyObject!) {
        self.button.showsMenu = !self.button.showsMenu
    }

    @IBAction func posBtn(sender: UIButton) {

    }
    @IBAction func posSlider(sender: UISlider) {
        posText.text = String(sender.value)
        self.button.animateWithRatio(sender.value)
    }

}

