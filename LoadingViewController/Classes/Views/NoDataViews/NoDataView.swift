//
//  NoDataView.swift
//  Pods
//
//  Created by Sapozhnik Ivan on 13.07.16.
//
//

import UIKit

public enum NoDataViewStyle {
	case simple
}

class NoDataView: UIView {

	var title: String? {
		didSet {
			didSetTitle()
		}
	}
	var message: String? {
		didSet {
			didSetMessage()
		}
	}
	var image: UIImage? {
		didSet {
			didSetImage()
		}
	}
	
	static func viewWithStyle(_ style: NoDataViewStyle) -> NoDataView {
		
		switch style {
		case .simple:
			let errorView = SimpleNoDataView.loadFromNib()
			return errorView
		}
	}

	func didSetTitle() {}
	func didSetMessage() {}
	func didSetImage() {}
	func didSetAction() {}
}
