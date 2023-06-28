//
//  Task.swift
//  ToDo
//
//  Created by James Smartleader on 27/06/23.
//

import Foundation
import RealmSwift


class Task: Object,ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var id :ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
