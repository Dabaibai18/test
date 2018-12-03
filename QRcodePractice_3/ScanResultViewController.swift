//
//  ScanResultViewController.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 27/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit

class ScanResultViewController: UIViewController {
    @IBOutlet weak var descriptionbtn: UITabBarItem!
    
    @IBOutlet weak var cum_tabbar: UITabBar!
    
    @IBOutlet weak var tabbarline: UILabel!
    @IBOutlet weak var scrollviewline: UIScrollView!
    
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var contentview: UIView!
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
        
        scrollviewline.frame.size = CGSize(width: cum_tabbar.frame.size.width / 3, height: 2)
        scrollviewline.contentSize = CGSize(width: width_screen * 3, height: 2)
        
        scrollviewline.isPagingEnabled = true
        scrollviewline.bounces = false
        scrollviewline.showsHorizontalScrollIndicator = false
        scrollviewline.isScrollEnabled = false
        
        tabbarline.frame = CGRect(x: 0, y: 0, width: width_screen * 3, height: 2)
        
        
        
        
        
        scrollerview.contentSize = CGSize(width:width_screen * 3, height: scrollerview.frame.size.height)
        scrollerview.isPagingEnabled = true
        scrollerview.bounces = false
        scrollerview.showsHorizontalScrollIndicator = false
        scrollerview.isScrollEnabled = false
        
        contentview.frame = CGRect(x: 0, y: 0, width: width_screen * 3, height: scrollerview.frame.size.height)
        descriptionview.frame = CGRect(x: 0, y: 0, width: width_screen, height: scrollerview.frame.size.height)

        eligibilityview.frame = CGRect(x: 0 + width_screen, y: 0, width: width_screen, height: scrollerview.frame.size.height)

        contactview.frame = CGRect(x: 0 + width_screen * 2, y: 0, width: width_screen, height: scrollerview.frame.size.height)
        
//        for  item in cum_tabbar!.items!{
//           // item.image = [item.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//            //print(item.title)
//            if item.title! == "Description" {
//                item.badgeColor = UIColor.red
//            }
//        }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        //scrollviewline.frame.size = CGSize(width: cum_tabbar.frame.size.width / 3, height: 2)
        
        print( scrollviewline.frame.size)
        
        print(scrollviewline.contentSize)
    }
  
    
    @IBAction func JoinStudy(_ sender: UIButton) {
       
      
        
    }
    
    

}
extension ScanResultViewController:UIScrollViewDelegate{
    
   
    
    
}



extension ScanResultViewController :UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        var Offset : CGPoint
        var LineOffset : CGPoint
        switch item.title! {
        case "Description":
            Offset = CGPoint(x: 0, y: 0)
            LineOffset = CGPoint(x: 0, y: 0)
            scrollerview.setContentOffset(Offset, animated: true)
            scrollviewline.setContentOffset(LineOffset, animated: true)
        case "Eligibility":
            Offset = CGPoint(x:scrollerview.frame.size.width , y: 0)
            LineOffset = CGPoint(x: cum_tabbar.frame.size.width / 3, y: 0)
            scrollerview.setContentOffset(Offset, animated: true)
            scrollviewline.setContentOffset(CGPoint(x: Offset.x + LineOffset.x,y: 0 ), animated: true)
        case "Contact":
            Offset = CGPoint(x:scrollerview.frame.size.width * 2, y: 0)
            LineOffset = CGPoint(x: cum_tabbar.frame.size.width / 3 * 2, y: 0)
            scrollerview.setContentOffset(Offset, animated: true)
            scrollviewline.setContentOffset(LineOffset, animated: true)
            
        default:
            break
        }
    }
    
    
}
