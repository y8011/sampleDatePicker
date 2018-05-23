//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by yuka on 2018/05/23.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateLable2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // プログラムでの初期設定方法
        let df = DateFormatter()
        
        df.dateFormat = "yyyy/MM/dd"
        df.locale = Locale(identifier: "ja_JP")

//        myDatePicker.minimumDate = df.date(from: "2016/1/1")
    }
    
    // TODO: ここ
    // FIXME:　ココバグ
    //     MARK:- DatePickerが選択されたとき
    @IBAction func dateSelected(_ sender: UIDatePicker) {
        
        //
        
        let df = DateFormatter()
        
        
        df.dateFormat = "yyyy/MM/dd"
        df.locale = Locale(identifier: "ja_JP")
        
        print(df.string(from: sender.date))
        
        dateLabel.text = df.string(from: sender.date)
        
//        df.calendar = Calendar(identifier: .japanese)
//        df.dateFormat = "E"
//        df.locale = Locale(identifier: "ja")

//
        df.dateStyle = .medium
        df.timeStyle = .none
        df.doesRelativeDateFormatting = true
        
        dateLable2.text = df.string(from: sender.date)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

