//
//  Hari.swift
//  Hari
//
//  Created by FromAtom on 2018/11/26.
//  Copyright © FromAtom All rights reserved.
//

import Foundation

public class Hari {
	public static let shared = Hari()

	private var suiteName: String?
	private var bundleID: String?

	private init() {}

	public func setup(suiteName: String, bundleID: String) {
		self.suiteName = suiteName
		self.bundleID = bundleID
	}

	public func string(forKey: HariKey) -> String? {
		guard let suiteName, let bundleID else {
			return nil
		}

		let repository = StringRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
		return repository.get()
	}

	public func string(forKey: HariKey) throws -> String {
		guard let suiteName else {
			throw HariError.undefinedSuiteName
		}
		guard let bundleID else {
			throw HariError.undefinedBundleID
		}

		let repository = StringRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
		guard let value = repository.get() else {
			throw HariError.notFoundKey
		}

		return value
	}

	public func bool(forKey: HariKey) throws -> Bool? {
		guard let suiteName, let bundleID else {
			return nil
		}

		let repository = BoolRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
		return repository.get()
	}

	public func bool(forKey: HariKey) throws -> Bool {
		guard let suiteName else {
			throw HariError.undefinedSuiteName
		}
		guard let bundleID else {
			throw HariError.undefinedBundleID
		}

		let repository = BoolRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
		guard let value = repository.get() else {
			throw HariError.notFoundKey
		}

		return value
	}

    public func int(forKey: HariKey) -> Int? {
        guard let suiteName, let bundleID else {
            return nil
        }

        let repository = IntRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
        return repository.get()
    }

    public func int(forKey: HariKey) throws -> Int {
        guard let suiteName else {
            throw HariError.undefinedSuiteName
        }
        guard let bundleID else {
            throw HariError.undefinedBundleID
        }

        let repository = IntRepository(suiteName: suiteName, bundleID: bundleID, key: forKey.stringValue)
        guard let value = repository.get() else {
            throw HariError.notFoundKey
        }

        return value
    }
}
