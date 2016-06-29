//
//  ErrorView.swift
//  Pods
//
//  Created by Sapozhnik Ivan on 29.06.16.
//
//

import UIKit

enum ErrorViewStyle {
	case Simple
}

class ErrorView: UIView {

	var action: ActionHandler?
	
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
	
	static func viewWithStyle(style: ErrorViewStyle, actionHandler:ActionHandler?) -> ErrorView {
		
		switch style {
		case .Simple:
			let errorView = SimpleErrorView()
			errorView.action = actionHandler
			return errorView
		default: break
		}
		
	}
	
	func didSetTitle() {}
	func didSetMessage() {}
	func didSetImage() {}
	func didSetAction() {}
}
