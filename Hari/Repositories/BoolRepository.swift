//
//  BoolRepository.swift
//  Hari
//
//  Created by FromAtom on 2018/11/12.
//  Copyright © 2018 pixiv Inc. All rights reserved.
//

import Foundation

struct BoolRepository: Repository {
	typealias T = Bool

	let suiteName: String
	let bundleID: String
	let key: String
}
