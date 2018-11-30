//
//  LearnMoreViewController.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 28/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit





class LearnMoreViewController: UIViewController {

    @IBOutlet weak var contentscrollview: UIScrollView!
    @IBOutlet weak var content_view: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        //have problem in the height
       
       // content_view.frame.size.height = view.frame.size.height * 2

//        contentscrollview.contentSize = content_view.frame.size
//         print("contetnHeight:\(contentscrollview.contentSize.height)")
    }
    

    

}
