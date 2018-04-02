//
//  ViewController.swift
//  Alien ImageView
//
//  Created by D7703_04 on 2018. 4. 2..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1 //사진의 인덱스 값증가
    var direction = 1 //direction이 1이면 증가 0이면 감소 구분
    
    @IBOutlet weak var myImageVIew: UIImageView!
    @IBOutlet weak var index: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지를 로드함 로로로롤로롤 나연 ~~~~!
        myImageVIew.image = UIImage(named: "frame1.png")
        index.text = "1"
    }


    @IBAction func imageUpdate(_ sender: Any) {
        
        //counter가 5이면 감소시키기 위해 direction을 0으로 변경
        if counter == 5 {
            direction = 0
        }
        //counter가 1이면 증가시키기 위해 direction을 1으로 변경
        else if counter == 1{
            direction = 1
        }//direction
        if direction == 1{
            counter += 1}
        else if direction == 0{
            counter = counter - 1
        }
        
        myImageVIew.image = UIImage(named: "frame\(counter).png")
        index.text = String(counter)
    }
    

}

