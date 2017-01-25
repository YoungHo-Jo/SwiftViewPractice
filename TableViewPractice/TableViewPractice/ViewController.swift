//
//  ViewController.swift
//  TableViewPractice
//
//  Created by JoYoungHo on 2017. 1. 25..
//  Copyright © 2017년 JoYoungHo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var testLabel: UILabel!

    
    var monthArray = ["01", "01", "01"]
    var dayArray = ["11", "15", "22"]
    var weekArray = ["W", "T", "S"]
    var timeArray = ["01:00", "23:30", "18:30"]
    var contentArray = ["가나다라", "마바사아자", "카카캌캌ㅋ카카카카카캌ㅋ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: MyCustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "MyCustomTableViewCell") as! MyCustomTableViewCell
        
        cell.monthLabel.text = monthArray[indexPath.row]
        cell.dayLabel.text = dayArray[indexPath.row]
        cell.weekdayLabel.text = weekArray[indexPath.row]
        cell.timeLabel.text = timeArray[indexPath.row]
        cell.contentLabel.text = contentArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)")
        testLabel.text = contentArray[indexPath.row]
    }
}





