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
        // 下のラベル(showNum)に文字を反映させる処理を書く(Int型→Srting型にキャストもする)
        showNum.text = String(sender.value)
        
    }
    
    
    
    // Sliderで選んだ数字を表示させるラベルを紐付け
    @IBOutlet weak var showNum: UILabel!
    
    
    // 占い結果を表示するTextViewの紐付け
    @IBOutlet weak var result: UITextView!
    
    
    //   それぞれにデータを並列させる
    let pickerResult : [String] = [
        "あなたは山に愛されています。\n",
        "あなたは海に愛されています。\n",
        "あなたは川に愛されています。\n",
        "あなたは森に愛されています。\n"
    ]
    
    
    let bloodResult : [String] = [
        "属性は「雷」です。\n",
        "属性は「水」です。\n",
        "属性は「風」です。\n",
        "属性は「草」です。\n"
    ]
    
    let likeNumResult: [String] = [
        "努力が報われなかったときは、「自分へのごほうび」とつぶやきながら、ひと口サイズのスイーツを口にして。",
        "探し物を思い浮かべながら、人差し指を7回反時計回りにまわしてみて。",
        "銀製品や銀のアクセサリーをピカピカに磨いてから、バッグに入れたり身につけて。",
        "ふと口をついて出た曲をダウンロードするか、ラジオ番組にリクエストメールを出しましょう。",
    ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Slider(lineNum)の初期値を設定
        showNum.text = "50"
    }


}

