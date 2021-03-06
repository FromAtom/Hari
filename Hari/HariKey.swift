//
//  HariKey.swift
//  Hari
//
//  Created by FromAtom on 2018/11/27.
//  Copyright © FromAtom All rights reserved.
//

import Foundation

public protocol HariKey {
	var stringValue: String { get }
}

public extension HariKey where Self: RawRepresentable, Self.RawValue == String {
	var stringValue: String { return rawValue }
}
