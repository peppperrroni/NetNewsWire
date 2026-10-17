//
//  RefreshProgressView.swift
//  NetNewsWire-iOS
//
//  Created by Maurice Parker on 10/24/19.
//  Copyright © 2019 Ranchero Software. All rights reserved.
//

import UIKit
import Account

final class RefreshProgressView: UIView {

	private let progressView = UIProgressView(progressViewStyle: .default)
	private let label = UILabel()

	private let accountManager: AccountManager

	init(accountManager: AccountManager) {
		self.accountManager = accountManager
		super.init(frame: .zero)
		setup()
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("RefreshProgressView is created in code with its AccountManager")
	}

	func update() {
		if !accountManager.combinedRefreshProgress.isComplete {
			progressChanged(animated: false)
		} else {
			updateRefreshLabel()
		}
	}

	override func didMoveToSuperview() {
		progressChanged(animated: false)
	}

	@objc func progressInfoDidChange(_ note: Notification) {
		progressChanged(animated: true)
	}

	@objc func contentSizeCategoryDidChange(_ note: Notification) {
		label.font = UIFont.preferredFont(forTextStyle: .footnote)
	}

	deinit {
		NotificationCenter.default.removeObserver(self)
	}
}

// MARK: Private

private extension RefreshProgressView {

	func setup() {
		progressView.translatesAutoresizingMaskIntoConstraints = false
		addSubview(progressView)

		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.preferredFont(forTextStyle: .footnote)
		label.textColor = .secondaryLabel
		label.textAlignment = .center
		label.adjustsFontForContentSizeCategory = true
		addSubview(label)

		NSLayoutConstraint.activate([
			progressView.leadingAnchor.constraint(equalTo: leadingAnchor),
			progressView.trailingAnchor.constraint(equalTo: trailingAnchor),
			progressView.centerYAnchor.constraint(equalTo: centerYAnchor),

			label.leadingAnchor.constraint(equalTo: leadingAnchor),
			label.trailingAnchor.constraint(equalTo: trailingAnchor),
			label.centerYAnchor.constraint(equalTo: centerYAnchor)
		])

		NotificationCenter.default.addObserver(self, selector: #selector(progressInfoDidChange(_:)), name: .progressInfoDidChange, object: accountManager.combinedRefreshProgress)
		NotificationCenter.default.addObserver(self, selector: #selector(contentSizeCategoryDidChange(_:)), name: UIContentSizeCategory.didChangeNotification, object: nil)

		update()
		scheduleUpdateRefreshLabel()

		isAccessibilityElement = true
		accessibilityTraits = [.updatesFrequently, .notEnabled]
	}

	func progressChanged(animated: Bool) {
		// Layout may crash if not in the view hierarchy.
		// https://github.com/Ranchero-Software/NetNewsWire/issues/1764
		let isInViewHierarchy = self.superview != nil

		let progressInfo = accountManager.combinedRefreshProgress.progressInfo

		if progressInfo.isComplete {
			if isInViewHierarchy {
				progressView.setProgress(1, animated: animated)
			}

			func completeLabel() {
				// Check that there are no pending downloads.
				if accountManager.combinedRefreshProgress.isComplete {
					self.updateRefreshLabel()
					self.label.isHidden = false
					self.progressView.isHidden = true
					if self.superview != nil {
						self.progressView.setProgress(0, animated: animated)
					}
				}
			}

			if animated {
				DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
					completeLabel()
				}
			} else {
				completeLabel()
			}
		} else {
			label.isHidden = true
			progressView.isHidden = false
			if isInViewHierarchy {
				let percent = Float(progressInfo.numberCompleted) / Float(progressInfo.numberOfTasks)

				// Don't let the progress bar go backwards unless we need to go back more than 25%
				if percent > progressView.progress || progressView.progress - percent > 0.25 {
					progressView.setProgress(percent, animated: animated)
				}
			}
		}
	}

	func updateRefreshLabel() {
		if let accountLastArticleFetchEndTime = accountManager.lastRefreshCompletedDate {

			if Date() > accountLastArticleFetchEndTime.addingTimeInterval(60) {

				let relativeDateTimeFormatter = RelativeDateTimeFormatter()
				relativeDateTimeFormatter.dateTimeStyle = .named
				let refreshed = relativeDateTimeFormatter.localizedString(for: accountLastArticleFetchEndTime, relativeTo: Date())
				let localizedRefreshText = NSLocalizedString("Updated %@", comment: "Updated")
				let refreshText = NSString.localizedStringWithFormat(localizedRefreshText as NSString, refreshed) as String
				label.text = refreshText

			} else {
				label.text = NSLocalizedString("Updated Just Now", comment: "Updated Just Now")
			}

		} else {
			label.text = ""
		}

		accessibilityLabel = label.text
	}

	func scheduleUpdateRefreshLabel() {
		DispatchQueue.main.asyncAfter(deadline: .now() + 60) { [weak self] in
			self?.updateRefreshLabel()
			self?.scheduleUpdateRefreshLabel()
		}
	}
}
