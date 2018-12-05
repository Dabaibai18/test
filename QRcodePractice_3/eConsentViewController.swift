//
//  eConsentViewController.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 28/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit

class eConsentViewController: UIViewController {

    @IBOutlet weak var next_btn: UIButton!
    
    var verificationcode :String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //此处有问题，距离写死了，不能自适应
        let code = CodeView(frame: CGRect(x: 20, y: 520, width: self.view.frame.size.width - 20*2, height: 30))
        code.callBacktext = { str in
            //设置按钮的状态变化，但是次数问题很大，比如回退的时候会导致逻辑不通
            self.verificationcode  = str
            self.next_btn.backgroundColor = UIColor.init(displayP3Red: 236 / 255, green: 47 / 255, blue: 72 / 255, alpha: 1)
            self.next_btn.layer.borderWidth = 0
            self.next_btn.setTitleColor(UIColor.init(displayP3Red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
            self.next_btn.isEnabled = true
            
        }
        //此处应该写一个删除验证码的时候 next的变化
        
        view.addSubview(code)
    }
    

    
    @IBAction func addItemtoClinicalStudents(_ sender: UIButton) {
        //获取验证码可以验证正确性，来判断是否可以跳转
        print(self.verificationcode)
        print("点了")
       
        
        
    }
    
}
