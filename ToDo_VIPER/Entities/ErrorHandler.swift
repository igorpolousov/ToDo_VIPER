//
//  ErrorHandler.swift
//  ToDo_VIPER
//
//  Created by Igor Polousov on 01.10.2025.
//

import Foundation

enum ErrorHandler: Error {
    case missingData
    case networkError
    case unxpectedError(error: Error)
}

extension ErrorHandler: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return "Missing valid data"
        case .networkError:
            return "Network Error"
        case .unxpectedError(error: let error):
            return "Unexpected error \(error.localizedDescription)"
        }
    }
}
