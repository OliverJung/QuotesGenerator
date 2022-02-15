//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by OliverJung on 2022/01/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "나는 나 자신을 빼 놓고는 다 안다.", name: "비용"),
        Quote(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴속에 살아간다.", name: "아인슈타인"),
        Quote(contents: "몇 번이라도 좋다! 이 끔찍한 생이여...다시!", name: "니체"),
        Quote(contents: "삶이 있는한 희망은 있다.", name: "키케로")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapQuotesGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(UInt32(quotes.count))) // 0 ~ 4 사이의 난수를 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }

}

