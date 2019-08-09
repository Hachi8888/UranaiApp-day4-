//
//  ViewController.swift
//  UranaiApp
//
//  Created by VERTEX22 on 2019/08/09.
//  Copyright © 2019 N-project. All rights reserved.
//

import UIKit

// PickerViewを使うために、2つのプロトコル(UIPickerViewDelegate,UIPickerViewDataSource)を追加
class ViewController: UIViewController {
    
    // 紐付け一覧
    // 誕生日を入力するPickerViewを紐付け
    @IBOutlet weak var birthDayPickerView: UIPickerView!
    
    // 血液型を選択するSegmentControllを紐付け
    @IBOutlet weak var bloodType: UISegmentedControl!
    
    // Sliderから好きな数字を選ぶとSliderの下のラベルに数字が反映される
    @IBAction func likeNum(_ sender: UISlider) {
        // 下のラベル(showNum)に文字を反映させる処理を書く(Int→Srtingにキャストもする)
        showNum.text = String(sender.value)
        
    }
    
    
    
    // Sliderで選んだ数字を表示させるラベルを紐付け
    @IBOutlet weak var showNum: UILabel!
    
    
    // 占い結果を表示するTextViewの紐付け
    @IBOutlet weak var result: UITextView!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Slider(lineNum)の初期値を設定
        showNum.text = "50"
    }


}

