//
//  ViewController.swift
//  HHDoctorProDemo
//
//  Created by Shi Jian on 2020/1/17.
//  Copyright © 2020 Shi Jian. All rights reserved.
//

import UIKit
import HHDoctor_pro
import HHDoctorSDK

class ViewController: UIViewController {

    @IBOutlet weak var mDescLbl: UILabel!
    @IBOutlet weak var mTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
    
    }
    
    
    // 跳转视频医生
    @IBAction func doJump2doctor(_ sender: UIButton) {
        self.mDescLbl.text = ""
        
        // 跳转视频界面
        HHDoctor.default.callDoctor(mTextView.text, topVC: self.navigationController!) { [weak self] in
            if let error = $0 {
                self?.mDescLbl.text = error
            } else {
                self?.mDescLbl.text = "跳转界面"
            }
        }
    }
    
    
    // 退出账户
    @IBAction func doLogout(_ sender: UIBarButtonItem) {
        self.mDescLbl.text = ""
        HHMSDK.default.logout { [weak self] in
            if let error = $0 {
                self?.mDescLbl.text = "退出登录失败:" + error
            } else {
                self?.mDescLbl.text = "退出登录成功"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

