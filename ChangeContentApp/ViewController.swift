//
//  ViewController.swift
//  ChangeContentApp
//
//  Created by jru on 2022/7/29.
//

import UIKit

class ViewController: UIViewController {
    
    let menusArray = ["Lobster", "Mexican", "Supreme"]
    
    let descriptionArray = [
"""
餡料
龍蝦沙拉.鳳梨.花枝.蟹條.香草粉.芥末醬

美味說明
特調濃郁白醬搭配肥美的花枝與蟹肉棒, 加上特調龍蝦沙拉,吃出滿口鮮甜的海洋風味!

價格
大披薩 $349
""",

"""
餡料
豬肉餡、火腿、洋蔥、青椒、蘑菇、青豆、義式臘腸

美味說明
特製餅皮鑲嵌豐富豬肉餡，鮮美火腿與道地義式肉腸，加上特選青蔬，經典組合、頂級享受！

價格
  大披薩 $349 小披薩 $249
""",

"""
餡料
墨西哥辣椒、義式肉醬、青椒、義式臘腸、豬肉

美味說明
自由奔放的墨西哥城，以嗆辣的墨西哥辣椒著名， 拿坡里把它們灑上Q彈餅皮，搭配義式

價格
  大披薩 $349 小披薩 $249
"""
]

    @IBOutlet weak var pizzaImageView: UIImageView!
    
    
    @IBOutlet weak var pizzaSegmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var pizzaPageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    var index = 0
    
    func updataUI(){
        pizzaImageView.image = UIImage(named: menusArray[index])
        descriptionLabel.text = descriptionArray[index]
        pizzaSegmentControl.selectedSegmentIndex = index
        pizzaPageControl.currentPage = index
    }
    
    @IBAction func preArrow(_ sender: Any) {
        index -= 1
        if index < 0 {
            index = menusArray.count - 1
        }
//        pizzaImageView.image = UIImage(named: menusArray[index])
//        descriptionLabel.text = descriptionArray[index]
//        pizzaSegmentControl.selectedSegmentIndex = index
//        pizzaPageControl.currentPage = index
        updataUI()
    }
    
    
    @IBAction func nextArrow(_ sender: Any) {
        index = (index + 1 ) % menusArray.count
//        pizzaImageView.image = UIImage(named: menusArray[index])
//        descriptionLabel.text = descriptionArray[index]
//        pizzaSegmentControl.selectedSegmentIndex = index
//        pizzaSegmentControl.selectedSegmentIndex = index
        updataUI()
    }
    
    @IBAction func selectMenu(_ sender: Any) {
        index = pizzaSegmentControl.selectedSegmentIndex
//        pizzaImageView.image = UIImage(named: menusArray[index])
//        descriptionLabel.text = descriptionArray[index]
//        pizzaSegmentControl.selectedSegmentIndex = index
//        pizzaPageControl.currentPage = index
        updataUI()
    }
    
    
    @IBAction func changePageControl(_ sender: Any) {
        index = pizzaPageControl.currentPage
//        pizzaImageView.image = UIImage(named: menusArray[index])
//        descriptionLabel.text = descriptionArray[index]
//        pizzaSegmentControl.selectedSegmentIndex = index
//        pizzaPageControl.currentPage = index
        updataUI()
    }
    
    
   
    @IBAction func inputbutton(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func close(_ sender: Any) {
    }
    
}

