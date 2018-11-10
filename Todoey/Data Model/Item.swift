//
//  Item.swift
//  Todoey
//
//  Created by Sergiy SHILINGOV on 11/3/18.
//  Copyright © 2018 Sergiy SHILINGOV. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
