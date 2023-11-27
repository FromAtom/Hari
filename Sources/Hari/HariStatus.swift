//
//  HariStatus.swift
//  Hari
//
//  Created by FromAtom on 2018/11/27.
//  Copyright © FromAtom All rights reserved.
//

import Foundation

public enum HariStatus<T> {
	case success(T)
	case failure(HariError)
}
