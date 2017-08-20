//
//  Currency.swift
//  Cryptomania
//
//  Created by Aleix on 18/8/17.
//  Copyright © 2017 Aleix Cos. All rights reserved.
//

import Foundation

struct Coin {
    let name: String
    let symbol: String
    let rank: Int
    let priceUsd: String
    let priceBtc: String
    let volume24h: String
    let marketCapUsd: String
    let availableSupply: String
    let totalSupply: String
    let percentChange1h: String
    let percentChange24h: String
    let percentChange7d: String
    let lastUpdated: String
    
    init?(dict: [String:Any]) {
        guard let name = dict["name"] as? String,
            let symbol = dict["symbol"] as? String,
            let rank = dict["rank"] as? Int,
            let priceUsd = dict["price_usd"] as? String,
            let priceBtc = dict["price_btc"] as? String,
            let volume24h = dict["24h_volume_usd"] as? String,
            let marketCapUsd = dict["market_cap_usd"] as? String,
            let availableSupply = dict["available_supply"] as? String,
            let totalSupply = dict["total_supply"] as? String,
            let percentChange1h = dict["percent_change_1h"] as? String,
            let percentChange24h = dict["percent_change_24h"] as? String,
            let percentChange7d = dict["percent_change_7d"] as? String,
            let lastUpdated = dict["last_updated"] as? String
        else { return nil }
        
        self.name = name
        self.symbol = symbol
        self.rank = rank
        self.priceUsd = priceUsd
        self.priceBtc = priceBtc
        self.volume24h = volume24h
        self.marketCapUsd = marketCapUsd
        self.availableSupply = availableSupply
        self.totalSupply = totalSupply
        self.percentChange1h = percentChange1h
        self.percentChange24h = percentChange24h
        self.percentChange7d = percentChange7d
        self.lastUpdated = lastUpdated
    }
}
