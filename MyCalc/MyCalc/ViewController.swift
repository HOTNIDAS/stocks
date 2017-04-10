//
//  ViewController.swift
//  MyCalc
//
//  Created by 本多弘幸 on 2016/07/25.
//  Copyright © 2016年 sure. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    let maxPrice = 99999999
    
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var discountRate: UITextField!
    @IBOutlet weak var discountedPriceField: UITextField!

    @IBOutlet weak var ratePicker: UIPickerView!
    fileprivate var preSelectedLb:UILabel!
    fileprivate let rateList: NSArray = ["5","8","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85","90","95"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        ratePicker.delegate = self
        ratePicker.dataSource = self
        self.preSelectedLb = ratePicker.view(forRow: 0, forComponent: 0) as! UILabel
    }
    // 列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return rateList.count
    }
    
    // pickerに表示するUIViewを返す
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let pickerLabel = UILabel()
        let titleData = rateList[row] as! String
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "HiraKakuProN-W3", size: 20.0)!,NSForegroundColorAttributeName:UIColor.white])
        
        // fontサイズ、テキスト
        pickerLabel.attributedText = myTitle
        // 中央寄せ ※これを指定しないとセンターにならない
        pickerLabel.textAlignment = NSTextAlignment.center
//        pickerLabel.frame = CGRectMake(0, 0, 80, 200)
        
        // 既存ラベル、選択状態のラベルが存在している
        if let lb = pickerView.view(forRow: row, forComponent: component) as? UILabel,
            let selected = self.preSelectedLb {
            // 設定
            self.preSelectedLb = lb
//            self.preSelectedLb.backgroundColor = UIColor.clearColor()
//            self.preSelectedLb.textColor = UIColor.whiteColor()
            self.preSelectedLb.font = UIFont.boldSystemFont(ofSize: 33)
        }
        
        return pickerLabel
    }
    
    
    // pickerに表示する値を返す ※viewForRowがあればこちらは単純にタイトルを返すだけなので不要
    //    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
    //        return prefectures[row] as! String
    //    }
    
    
    // pickerが選択された際に呼ばれる
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row: \(row)")
        print("value: \(rateList[row])")
        
        // 選択状態のラベルを代入
        self.preSelectedLb = pickerView.view(forRow: row, forComponent: component) as! UILabel
        // discountRateに選択された値をセット
        discountRate.text = "\(rateList[row])"
        // 値引き後価格を再計算
        let value = priceField.text!
        if let price = Int(value) {
            discountedPriceField.text = "\(calcDiscount(price))"
        }

        // ピッカーのリロードでviewForRowが呼ばれる
        pickerView.reloadComponent(component)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 値引き計算を行う関数
    func calcDiscount(_ price :Int) -> Int{
        let rate = discountRate.text!
        if let disRate = Int(rate){
            let resultPrice = Double(price) - Double(price) * Double(disRate) / 100
            return Int(resultPrice)
        }
        return 0
    }
    
//    // 値段を桁区切りにフォーマットする関数
//    func changePriceFormat(price :Int) -> String{
//
//        // フォーマット処理
//        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
//        [f setNumberStyle:NSNumberFormatterDecimalStyle];
//        
//        // フォーマット後
//        NSString *formatString = [f stringFromNumber:[f numberFromString:integralPart]];
//    }

    @IBAction func tapClearButton(_ sender: AnyObject) {
        priceField.text = "0"
        discountedPriceField.text = "0"
    }

    @IBAction func tap0Button(_ sender: AnyObject) {
        let value = priceField.text! + "0"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap00Button(_ sender: AnyObject) {
        let value = priceField.text! + "00"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }

    @IBAction func tap1Button(_ sender: AnyObject) {
        let value = priceField.text! + "1"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap2Button(_ sender: AnyObject) {
        let value = priceField.text! + "2"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap3Button(_ sender: AnyObject) {
        let value = priceField.text! + "3"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    @IBAction func tap4Button(_ sender: AnyObject) {
        let value = priceField.text! + "4"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
        
    @IBAction func tap5Button(_ sender: AnyObject) {
        let value = priceField.text! + "5"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap6Button(_ sender: AnyObject) {
        let value = priceField.text! + "6"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap7Button(_ sender: AnyObject) {
        let value = priceField.text! + "7"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap8Button(_ sender: AnyObject) {
        let value = priceField.text! + "8"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
    
    @IBAction func tap9Button(_ sender: AnyObject) {
        let value = priceField.text! + "9"
        if let price = Int(value) {
            if price < maxPrice{
                priceField.text = "\(price)"
                discountedPriceField.text = "\(calcDiscount(price))"
            }
        }
    }
}

