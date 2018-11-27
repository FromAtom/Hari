//
//  StringRepository.swift
//  Hari
//
//  Created by FromAtom on 2018/11/12.
//  Copyright © 2018 pixiv Inc. All rights reserved.
//

import Foundation

struct StringRepository: Repository {
	typealias T = String

	let suiteName: String
	let bundleID: String
	let key: String
}
