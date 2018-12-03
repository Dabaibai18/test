//
//  FoodRecommendationViewController.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 30/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit

class FoodRecommendationViewController: UIViewController {

    @IBOutlet weak var prograssview: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prograssview.backgroundColor = UIColor.white
        //设置的是圆形进度条
        let progressView = ZMProgressView()
        progressView.lineColor = UIColor.init(displayP3Red: 246 / 255 , green: 16 / 255, blue: 51 / 255, alpha: 1)
        progressView.loopColor = UIColor.init(displayP3Red: 225 / 255 , green: 225 / 255, blue: 225 / 255, alpha: 1)
        progressView.frame = CGRect(x: 0, y: 0, width: 150  , height: 150)
        progressView.isAnimatable = true
        progressView.backgroundColor = UIColor.clear
        progressView.percent = 25;
        //设置标题
        progressView.title = "\(progressView.percent)%"
        progressView.percentUnit = "Complete";
        self.prograssview.addSubview(progressView)
    }
    override func viewWillAppear(_ animated: Bool) {
        alert()
    }
    
     func alert(){
        // 创建
        let alertController = UIAlertController(title: "", message: "Activity completion refer to when you started on the clinical studies.", preferredStyle:.alert)
        let okAction = UIAlertAction(title: "Okay", style: .default) { (UIAlertAction) in
            print("点击了好的")
        }
        
        // 添加
        
        alertController.addAction(okAction)
        
        // 弹出
        self.present(alertController, animated: true, completion: nil)
    }

    

}
