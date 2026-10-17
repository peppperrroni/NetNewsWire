//
//  WebViewProvider.swift
//  NetNewsWire-iOS
//
//  Created by Maurice Parker on 9/21/19.
//  Copyright © 2019 Ranchero Software. All rights reserved.
//

import Foundation
import UIKit
import RSCore
import WebKit

/// WKWebView has an awful behavior of a flash to white on first load when in dark mode.
/// Keep a queue of WebViews where we've already done a trivial load so that by the time we need them in the UI, they're past the flash-to-white part of their lifecycle.
@MainActor final class WebViewProvider: NSObject {
	private let articleIconSchemeHandler: ArticleIconSchemeHandler
	private let operationQueue = MainThreadOperationQueue()
	private var queue = NSMutableArray()

	private let fullscreenKeeper: WebViewFullscreenKeeper

	init(coordinator: SceneCoordinator) {
		articleIconSchemeHandler = ArticleIconSchemeHandler(coordinator: coordinator)
		fullscreenKeeper = coordinator.deps.webViewFullscreenKeeper
		super.init()
		replenishQueueIfNeeded()
		NotificationCenter.default.addObserver(self, selector: #selector(handleWillEnterForeground(_:)), name: UIApplication.willEnterForegroundNotification, object: nil)
	}

	func replenishQueueIfNeeded() {
		operationQueue.add(WebViewProviderReplenishQueueOperation(queue: queue, articleIconSchemeHandler: articleIconSchemeHandler, fullscreenKeeper: fullscreenKeeper))
	}

	// Pooled web views can lose their content process while the app is in the
	// background. A load into a dead web view can fail silently, showing blank —
	// so start over with fresh web views.
	@objc func handleWillEnterForeground(_ note: Notification) {
		flushQueue()
	}

	private func flushQueue() {
		queue.removeAllObjects()
		replenishQueueIfNeeded()
	}

	func dequeueWebView(completion: @escaping (PreloadedWebView) -> Void) {
		operationQueue.add(WebViewProviderDequeueOperation(queue: queue, articleIconSchemeHandler: articleIconSchemeHandler, fullscreenKeeper: fullscreenKeeper, completion: completion))
		operationQueue.add(WebViewProviderReplenishQueueOperation(queue: queue, articleIconSchemeHandler: articleIconSchemeHandler, fullscreenKeeper: fullscreenKeeper))
	}
}

final class WebViewProviderReplenishQueueOperation: MainThreadOperation, @unchecked Sendable {
	private let minimumQueueDepth = 3

	private var queue: NSMutableArray
	private var articleIconSchemeHandler: ArticleIconSchemeHandler

	private let fullscreenKeeper: WebViewFullscreenKeeper

	init(queue: NSMutableArray, articleIconSchemeHandler: ArticleIconSchemeHandler, fullscreenKeeper: WebViewFullscreenKeeper) {
		self.fullscreenKeeper = fullscreenKeeper
		self.queue = queue
		self.articleIconSchemeHandler = articleIconSchemeHandler
		super.init(name: "WebViewProviderReplenishQueueOperation")
	}

	override func run() {
		while queue.count < minimumQueueDepth {
			let webView = PreloadedWebView(articleIconSchemeHandler: articleIconSchemeHandler, fullscreenKeeper: fullscreenKeeper)
			webView.preload()
			queue.insert(webView, at: 0)
		}
		didComplete()
	}
}

final class WebViewProviderDequeueOperation: MainThreadOperation, @unchecked Sendable {
	private var queue: NSMutableArray
	private var articleIconSchemeHandler: ArticleIconSchemeHandler
	private var completion: (PreloadedWebView) -> Void

	private let fullscreenKeeper: WebViewFullscreenKeeper

	init(queue: NSMutableArray, articleIconSchemeHandler: ArticleIconSchemeHandler, fullscreenKeeper: WebViewFullscreenKeeper, completion: @escaping (PreloadedWebView) -> Void) {
		self.fullscreenKeeper = fullscreenKeeper
		self.queue = queue
		self.articleIconSchemeHandler = articleIconSchemeHandler
		self.completion = completion
		super.init(name: "WebViewProviderFlushQueueOperation")
	}

	override func run() {
		if let webView = queue.lastObject as? PreloadedWebView {
			self.completion(webView)
			self.queue.remove(webView)
			didComplete()
			return
		}

		assertionFailure("Creating PreloadedWebView in \(#function); queue has run dry.")

		let webView = PreloadedWebView(articleIconSchemeHandler: articleIconSchemeHandler, fullscreenKeeper: fullscreenKeeper)
		webView.preload()
		self.completion(webView)
		didComplete()
	}
}
