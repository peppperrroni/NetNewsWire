//
//  AppDelegate+Shared.swift
//  NetNewsWire
//
//  Created by Brent Simmons on 6/19/26.
//

import Foundation
import Account
import ActivityLog
import ErrorLog
import HTMLMetadata
import Images
import RSCore

extension AppDelegate {

	/// Vacuum every database the app owns — the app-level error-log, HTML-metadata,
	/// and image-metadata databases, plus each account's databases.
	func vacuumAllDatabases() async {
		await vacuumAndLog(databasePath: deps.accountManager.errorLogDatabase.databasePath) {
			await deps.accountManager.errorLogDatabase.vacuum()
		}
		await vacuumAndLog(databasePath: deps.htmlMetadataDatabase.databasePath) {
			await deps.htmlMetadataDatabase.vacuum()
		}
		await vacuumAndLog(databasePath: deps.imageMetadataDatabase.databasePath) {
			await deps.imageMetadataDatabase.vacuum()
		}
		await deps.accountManager.vacuumAccountDatabases()
	}

	private func vacuumAndLog(databasePath: String, _ work: () async -> Void) async {
		await deps.activityLog.logActivity(owner: .app, kind: .vacuumDatabase, detail: AppConfig.relativeDataPath(databasePath)) {
			await work()
		}
	}
}
