//
//  ToDo.swift
//  ToDo_VIPER
//
//  Created by Igor Polousov on 01.10.2025.
//

import Foundation

struct ToDo: Identifiable {
    let id: Int
    let toDo: String
    let notes: String = ""
    let completed: Bool
    let userId: Int
}

extension ToDo: Decodable {
    private enum CodingKeys:  CodingKey {
        case id
        case toDo
        case completed
        case usesrId
    }
    
    init(from decoder: any Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let rawId = try? values.decode(Int.self, forKey: .id)
        let rawToDo = try? values.decode(String.self, forKey: .toDo)
        let rawCompleted = try? values.decode(Bool.self, forKey: .completed)
        let rawUserId = try? values.decode(Int.self, forKey: .usesrId)
        
        guard let id = rawId,
              let toDo = rawToDo,
              let completed = rawCompleted,
              let userId = rawUserId
        else {throw ErrorHandler.missingData}
        
        self.id = id
        self.toDo = toDo
        self.completed = completed
        self.userId = userId
        
    }
}

extension ToDo: Equatable {
    static func == (lhs: ToDo, rhs: ToDo) -> Bool {
        lhs.id == rhs.id
    }
}
