//
//  Hari.swift
//  Hari
//
//  Created by FromAtom on 2018/11/26.
//  Copyright © 2018 pixiv Inc. All rights reserved.
//

import Foundation

public class Hari {
	public static let shared = Hari()

	private var suiteName: String!
	private var bundleID: String!

	private init() {}

	public func setup(suiteName: String, bundleID: String) {
		self.suiteName = suiteName
		self.bundleID = bundleID
	}

	public func string(forKey: HariKey) throws -> String {
		let repository = StringRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
		guard let value = repository.get() else {
			throw HariError.notFoundKey
		}

		return value
	}

	public func bool(forKey: HariKey) throws -> Bool {
		let repository = BoolRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
		guard let value = repository.get() else {
			throw HariError.notFoundKey
		}

		return value
	}

}
