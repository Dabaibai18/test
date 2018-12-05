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
    
    @IBOutlet weak var lineview: UIView!
    @IBOutlet weak var tabbarline: UILabel!
    
    
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
        scrollerview.contentSize = CGSize(width:width_screen * 3, height: scrollerview.frame.size.height)
        scrollerview.isPagingEnabled = true
        scrollerview.bounces = false
        scrollerview.showsHorizontalScrollIndicator = false
        scrollerview.isScrollEnabled = false
        
        contentview.frame = CGRect(x: 0, y: 0, width: width_screen * 3, height: scrollerview.frame.size.height)
        descriptionview.frame = CGRect(x: 0, y: 0, width: width_screen, height: scrollerview.frame.size.height)

        eligibilityview.frame = CGRect(x: 0 + width_screen, y: 0, width: width_screen, height: scrollerview.frame.size.height)

        contactview.frame = CGRect(x: 0 + width_screen * 2, y: 0, width: width_screen, height: scrollerview.frame.size.height)
        
        setDefault()
        
    }
    
    func setDefault(){
        
        //cum_tabbar.items![0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .normal)
        descriptionbtn.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .normal)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
         tabbarline.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width / 3, height: 2)
        
        
    }
    @IBAction func JoinStudy(_ sender: UIButton) {
       
      
        
    }
    
    

}
extension ScanResultViewController:UIScrollViewDelegate{
    
   
    
    
}



extension ScanResultViewController :UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        descriptionbtn.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(displayP3Red: 173 / 255, green: 173 / 255, blue: 173 / 255, alpha: 1)], for: .normal)
         descriptionbtn.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(displayP3Red: 236 / 255, green: 45 / 255, blue: 72 / 255, alpha: 1)], for: .selected)
        var Offset : CGPoint
        var lineoffset :CGPoint
        switch item.title! {
        case "Description":
            Offset = CGPoint(x: 0, y: 0)
            lineoffset = CGPoint(x: 0, y: 0)
            tabbarline.frame = CGRect(x: lineoffset.x, y: lineoffset.y, width: UIScreen.main.bounds.width / 3, height: 2)
            
            scrollerview.setContentOffset(Offset, animated: true)
            
        case "Eligibility":
            Offset = CGPoint(x:scrollerview.frame.size.width , y: 0)
            lineoffset = CGPoint(x: tabbarline.frame.width, y: 0)
            tabbarline.frame = CGRect(x: lineoffset.x, y: lineoffset.y, width: UIScreen.main.bounds.width / 3, height: 2)
            
            scrollerview.setContentOffset(Offset, animated: true)
            
        case "Contact":
            lineoffset = CGPoint(x: tabbarline.frame.width * 2, y: 0)
            Offset = CGPoint(x:scrollerview.frame.size.width * 2, y: 0)
            tabbarline.frame = CGRect(x: lineoffset.x, y: lineoffset.y, width: UIScreen.main.bounds.width / 3, height: 2)
            scrollerview.setContentOffset(Offset, animated: true)
            
            
        default:
            print("error")
            break
        }
    }
    
    
}
