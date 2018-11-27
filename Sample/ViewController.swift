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
		Hari.shared.bool(forKey: HariKeys.useDebugMode, completion: { status in
			switch status {
			case .success(let value):
				print(value)
			case .failure(let error):
				print(error)
			}
		})
	}

}
