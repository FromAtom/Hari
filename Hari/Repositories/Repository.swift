//
//  Repository.swift
//  Hari
//
//  Created by FromAtom on 2018/11/26.
//  Copyright © 2018 pixiv Inc. All rights reserved.
//

import Foundation

protocol Repository {
	associatedtype T
	var suiteName: String { get }
	var userDefaults: UserDefaults { get }
	var bundleID: String { get }
	var key: String { get }
	var actualKey: String { get }

	func get() -> T?
}

extension Repository {
	var userDefaults: UserDefaults {
		return UserDefaults(suiteName: suiteName)!
	}

	var actualKey: String {
		return "\(bundleID)_\(key)"
	}

	func get() -> T? {
		return userDefaults.object(forKey: actualKey) as? T
	}
}
