//
//  ToDo+Preview.swift
//  ToDo_VIPER
//
//  Created by Igor Polousov on 01.10.2025.
//

import Foundation

extension ToDo {
    static var preview: ToDo {
        var toDo = ToDo(id: 1, todo: "Do something nice for someone you care about", completed: false, userId: 152)
        return toDo
    }
}
