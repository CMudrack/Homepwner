//
//  ItemStore.swift
//  Homepwner
//
//  Created by Cody Mudrack on 10/15/19.
//  Copyright © 2019 Cody Mudrack. All rights reserved.
//

import Foundation

class ItemStore {
    
    var items = [Item]()
    
    init() {
        for _ in 0..<10 {
            items.append(Item())
        }
    }
}
