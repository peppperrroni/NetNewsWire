

import Account
import ActivityLog
import Articles
import ArticlesDatabase
import FeedFinder
import Foundation
import HTMLMetadata
import Images
import NeedleFoundation
import RSCore
import RSWeb

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class SessionDependencye006475b28ee8ee9e8cfProvider: SessionDependency {
    var activityLog: ActivityLog {
        return appComponent.activityLog
    }
    var batchUpdate: BatchUpdate {
        return appComponent.batchUpdate
    }
    var networkMonitor: NetworkMonitor {
        return appComponent.networkMonitor
    }
    var feedFinder: FeedFinder {
        return appComponent.feedFinder
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SessionComponent
private func factorya4ba880109b340bd0088f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SessionDependencye006475b28ee8ee9e8cfProvider(appComponent: parent1(component) as! AppComponent)
}
private class TimelineDependency2f86fc036cf9b1443612Provider: TimelineDependency {
    var account: Account {
        return sessionComponent.account
    }
    private let sessionComponent: SessionComponent
    init(sessionComponent: SessionComponent) {
        self.sessionComponent = sessionComponent
    }
}
/// ^->AppComponent->SessionComponent->TimelineComponent
private func factorya513d80298a8460be2ba5bb94a2296eb03e65afd(_ component: NeedleFoundation.Scope) -> AnyObject {
    return TimelineDependency2f86fc036cf9b1443612Provider(sessionComponent: parent1(component) as! SessionComponent)
}

#else
extension SessionComponent: NeedleFoundation.Registration {
    public func registerItems() {
        keyPathToName[\SessionDependency.activityLog] = "activityLog-ActivityLog"
        keyPathToName[\SessionDependency.batchUpdate] = "batchUpdate-BatchUpdate"
        keyPathToName[\SessionDependency.networkMonitor] = "networkMonitor-NetworkMonitor"
        keyPathToName[\SessionDependency.feedFinder] = "feedFinder-FeedFinder"
        localTable["database-ArticlesDatabase"] = { [unowned self] in self.database as Any }
        localTable["account-Account"] = { [unowned self] in self.account as Any }
    }
}
extension AppComponent: NeedleFoundation.Registration {
    public func registerItems() {

        localTable["batchUpdate-BatchUpdate"] = { [unowned self] in self.batchUpdate as Any }
        localTable["mainThreadOperationQueue-MainThreadOperationQueue"] = { [unowned self] in self.mainThreadOperationQueue as Any }
        localTable["downloadCache-DownloadCache"] = { [unowned self] in self.downloadCache as Any }
        localTable["downloader-Downloader"] = { [unowned self] in self.downloader as Any }
        localTable["networkMonitor-NetworkMonitor"] = { [unowned self] in self.networkMonitor as Any }
        localTable["activityLog-ActivityLog"] = { [unowned self] in self.activityLog as Any }
        localTable["feedFinder-FeedFinder"] = { [unowned self] in self.feedFinder as Any }
        localTable["authorCache-AuthorCache"] = { [unowned self] in self.authorCache as Any }
        localTable["htmlMetadataDatabase-HTMLMetadataDatabase"] = { [unowned self] in self.htmlMetadataDatabase as Any }
        localTable["htmlMetadataDownloader-HTMLMetadataDownloader"] = { [unowned self] in self.htmlMetadataDownloader as Any }
        localTable["imageMetadataDatabase-ImageMetadataDatabase"] = { [unowned self] in self.imageMetadataDatabase as Any }
        localTable["imageDownloader-ImageDownloader"] = { [unowned self] in self.imageDownloader as Any }
        localTable["faviconDownloader-FaviconDownloader"] = { [unowned self] in self.faviconDownloader as Any }
        localTable["feedIconDownloader-FeedIconDownloader"] = { [unowned self] in self.feedIconDownloader as Any }
        localTable["authorAvatarDownloader-AuthorAvatarDownloader"] = { [unowned self] in self.authorAvatarDownloader as Any }
        localTable["faviconGenerator-FaviconGenerator"] = { [unowned self] in self.faviconGenerator as Any }
        localTable["appDefaults-AppDefaults"] = { [unowned self] in self.appDefaults as Any }
        localTable["articleStringFormatter-ArticleStringFormatter"] = { [unowned self] in self.articleStringFormatter as Any }
        localTable["accountManager-AccountManager"] = { [unowned self] in self.accountManager as Any }
        localTable["smartFeedsController-SmartFeedsController"] = { [unowned self] in self.smartFeedsController as Any }
        localTable["iconImageCache-IconImageCache"] = { [unowned self] in self.iconImageCache as Any }
        localTable["articleThemesManager-ArticleThemesManager"] = { [unowned self] in self.articleThemesManager as Any }
        localTable["articleThemeDownloader-ArticleThemeDownloader"] = { [unowned self] in self.articleThemeDownloader as Any }
        localTable["articleStatusSyncTimer-ArticleStatusSyncTimer"] = { [unowned self] in self.articleStatusSyncTimer as Any }
        localTable["extensionFeedAddRequestFile-ExtensionFeedAddRequestFile"] = { [unowned self] in self.extensionFeedAddRequestFile as Any }
        localTable["extensionContainersFile-ExtensionContainersFile"] = { [unowned self] in self.extensionContainersFile as Any }
        localTable["widgetDataEncoder-WidgetDataEncoder?"] = { [unowned self] in self.widgetDataEncoder as Any }
        localTable["userNotificationManager-UserNotificationManager"] = { [unowned self] in self.userNotificationManager as Any }
        localTable["webViewFullscreenKeeper-WebViewFullscreenKeeper"] = { [unowned self] in self.webViewFullscreenKeeper as Any }
    }
}
extension TimelineComponent: NeedleFoundation.Registration {
    public func registerItems() {
        keyPathToName[\TimelineDependency.account] = "account-Account"
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent->SessionComponent", factorya4ba880109b340bd0088f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->AppComponent->SessionComponent->TimelineComponent", factorya513d80298a8460be2ba5bb94a2296eb03e65afd)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
