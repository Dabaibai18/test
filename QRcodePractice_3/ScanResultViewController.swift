//
//  ScanResultViewController.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 27/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit

class ScanResultViewController: UIViewController {

    @IBOutlet weak var cum_tabbar: UITabBar!
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var scrollerview: UIScrollView!
    
    @IBOutlet weak var descriptionview: UIView!
    @IBOutlet weak var eligibilityview: UIView!
    @IBOutlet weak var contactview: UIView!
    
    
    static var name:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cum_tabbar.delegate = self
        scrollerview.delegate = self
        ScanResultViewController.name = namelabel.text!
    }
    override func viewWillAppear(_ animated: Bool) {
        let width_screen = UIScreen.main.bounds.width
        scrollerview.contentSize = CGSize(width:width_screen * 3, height: scrollerview.frame.size.height)
        scrollerview.isPagingEnabled = true
        scrollerview.bounces = false
        scrollerview.showsHorizontalScrollIndicator = false
        scrollerview.isScrollEnabled = false
        descriptionview.frame = CGRect(x: 0, y: 0, width: width_screen, height: scrollerview.frame.size.height)

        eligibilityview.frame = CGRect(x: 0 + width_screen, y: 0, width: width_screen, height: scrollerview.frame.size.height)

        contactview.frame = CGRect(x: 0 + width_screen * 2, y: 0, width: width_screen, height: scrollerview.frame.size.height)
        
        
        
        
    }
    
   
    
    @IBAction func JoinStudy(_ sender: UIButton) {
       
      
        
    }
    
    

}
extension ScanResultViewController:UIScrollViewDelegate{
    
   
    
    
}



extension ScanResultViewController :UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        var Offset : CGPoint
        switch item.title! {
        case "Description":
            Offset = CGPoint(x: 0, y: 0)
            scrollerview.setContentOffset(Offset, animated: true)
        case "Eligibility":
            Offset = CGPoint(x:scrollerview.frame.size.width , y: 0)
            scrollerview.setContentOffset(Offset, animated: true)
        case "Contact":
            Offset = CGPoint(x:scrollerview.frame.size.width * 2, y: 0)
            scrollerview.setContentOffset(Offset, animated: true)
            
        default:
            break
        }
    }
    
    
}
