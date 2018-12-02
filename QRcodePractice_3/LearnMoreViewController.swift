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
    
    @IBOutlet weak var label1: UILabel!//这个名字为了测试，垃圾名字我想不出来更好的，要是真的决定这么做我再想。。。。
    
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    override func viewDidAppear(_ animated: Bool) {
        
        //contentscrollview.contentSize = content_view.frame.size
        //此处height仍然有问题，主要原因是自适应的布局不能正确计算出滚动高度
        //我猜是因为label标签中的高度也是通过文字计算的高度，不是明确的高度，因此不能正确计算，如果没有其他更好的解决办法，我想到的办法是
        //将最笨的办法--将所有控件c拖进来手动设置，但是这个方法很不可取，因为每次都拖动，加入没有必要的关联
        
        print("label4.frame.size.height:\(label4.frame.size.height)")
        print("contentscrollview:\(contentscrollview.frame.size.height)")
        print("contentscrollview.contentSize:\(contentscrollview.contentSize.height)")
    }
    

   
    

}
