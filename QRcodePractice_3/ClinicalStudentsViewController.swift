//
//  ClinicalStudentsViewController.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 28/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit

class ClinicalStudentsViewController: UIViewController {

    @IBOutlet weak var titemableview: UITableView!
   
    var names :[String] = []
    let identifier = "cell"
    static var isfirstload = true
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titemableview.isHidden = false
        titemableview.delegate = self
        titemableview.dataSource = self
        
        
        titemableview.register(CumstomItemCell.self, forCellReuseIdentifier: identifier)
        titemableview.backgroundColor = UIColor.white
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // titemableview.separatorStyle = .none
        if ClinicalStudentsViewController.isfirstload {
            print(ClinicalStudentsViewController.isfirstload)
            ClinicalStudentsViewController.isfirstload = false
            print(ClinicalStudentsViewController.isfirstload)
        }else{
            names.append(ScanResultViewController.name)
            print("names:\(names.count)")
            titemableview.reloadData()
        }
       
        
    }
    

}
extension ClinicalStudentsViewController:UITableViewDelegate,UITableViewDataSource {
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : CumstomItemCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CumstomItemCell
        //cell = CumstomItemCell.init(style: .default, reuseIdentifier: "cell")
        cell.imageview.image = UIImage(named: "pain")
        cell.namelabel.text = ScanResultViewController.name //这里存在问题应该以传值的方式 不应该用静态的变量存值
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
        
        
        
        
        
       
    
    
    
}
