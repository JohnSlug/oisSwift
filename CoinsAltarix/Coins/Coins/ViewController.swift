//
//  ViewController.swift
//  Coins
//
//  Created by Данил on 20.07.17.
//  Copyright © 2017 Данил. All rights reserved.
//

import UIKit
import Alamofire
import Foundation
import SwiftyJSON

struct Coins {
    let volumeUsd: Double
    let availableSupply: Double
    let id: String
    let lastUpdated: String
    let marketCapUsd: Double
    let name: String
    let percentChange1h: Double
    let percentChange24h: Double
    let percentChange7d: Double
    let priceBtc: Double
    let priceUsd: Double
    let rank: Int
    let symbol: String
    let totalSupply: Double
  
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        Alamofire.request("https://api.coinmarketcap.com/v1/ticker/?limit=10").responseJSON {
            (response) -> Void in
            if let jsonValue = response.result.value{
                let json = JSON(jsonValue)
                for item in json[].arrayValue {
                    print(item["name"].stringValue)
                    self.model.append(item["name"].stringValue)
                }
            }
            
                }
        
    }

    var model = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let MyCellTable = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "MyCellTable")
        MyCellTable.textLabel?.text = model[indexPath.row]
        return (MyCellTable)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

