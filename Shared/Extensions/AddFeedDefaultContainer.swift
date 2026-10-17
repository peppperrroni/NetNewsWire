//
//  AddFeedDefaultContainer.swift
//  NetNewsWire-iOS
//
//  Created by Maurice Parker on 11/16/19.
//  Copyright © 2019 Ranchero Software. All rights reserved.
//

import Foundation
import Account

@MainActor struct AddFeedDefaultContainer {

	static func defaultContainer(accountManager: AccountManager) -> Container? {

		if let accountID = AppDefaults.shared.addFeedAccountID, let account = accountManager.activeAccounts.first(where: { $0.accountID == accountID }) {
			if let folderName = AppDefaults.shared.addFeedFolderName, let folder = account.existingFolder(withDisplayName: folderName) {
				return folder
			} else {
				return substituteContainerIfNeeded(account: account)
			}
		} else if let account = accountManager.sortedActiveAccounts.first {
			return substituteContainerIfNeeded(account: account)
		} else {
			return nil
		}

	}

	static func saveDefaultContainer(_ container: Container) {
		AppDefaults.shared.addFeedAccountID = container.account?.accountID
		if let folder = container as? Folder {
			AppDefaults.shared.addFeedFolderName = folder.nameForDisplay
		} else {
			AppDefaults.shared.addFeedFolderName = nil
		}
	}

	static func substituteContainerIfNeeded(account: Account) -> Container? {
		if !account.behaviors.contains(.disallowFeedInRootFolder) {
			return account
		} else {
			if let folder = account.sortedFolders?.first {
				return folder
			} else {
				return nil
			}
		}
	}

}
