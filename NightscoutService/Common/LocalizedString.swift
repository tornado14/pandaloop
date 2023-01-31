//
//  LocalizedString.swift
//  NightscoutService
//
//  Created by Darin Krauss on 6/21/19.
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import Foundation

private class FrameworkBundle {

    static let main = Bundle(for: FrameworkBundle.self)

}

func LocalizedString(_ key: String, tableName: String? = nil, value: String? = nil, comment: String) -> String {
    if let value = value {
        return NSLocalizedString(key, tableName: tableName, bundle: FrameworkBundle.main, value: value, comment: comment)
    } else {
        return NSLocalizedString(key, tableName: tableName, bundle: FrameworkBundle.main, comment: comment)
    }
}
