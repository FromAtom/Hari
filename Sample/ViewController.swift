//
//  ViewController.swift
//  Sample
//
//  Created by FromAtom on 2018/11/26.
//  Copyright © 2018 pixiv Inc. All rights reserved.
//

import UIKit
import Hari

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		Hari.shared.setup(suiteName: "com.example.app.group", bundleID: "com.example.app")
		do {
			let value = try Hari.shared.bool(forKey: HariKeys.useDebugMode)
			print(value)
		} catch let error {
			print(error)
		}
	}

}
