

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
import Synth001
import Synth002
import Synth003
import Synth004
import Synth005
import Synth006
import Synth007
import Synth008
import Synth009
import Synth010
import Synth011
import Synth012
import Synth013
import Synth014
import Synth015
import Synth016
import Synth017
import Synth018
import Synth019
import Synth020
import Synth021
import Synth022
import Synth023
import Synth024
import Synth025
import Synth026
import Synth027
import Synth028
import Synth029
import Synth030
import Synth031
import Synth032
import Synth033
import Synth034
import Synth035
import Synth036
import Synth037
import Synth038
import Synth039
import Synth040
import Synth041
import Synth042
import Synth043
import Synth044
import Synth045
import Synth046
import Synth047
import Synth048
import Synth049
import Synth050
import Synth051
import Synth052
import Synth053
import Synth054
import Synth055
import Synth056
import Synth057
import Synth058
import Synth059
import Synth060
import Synth061
import Synth062
import Synth063
import Synth064

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
        localTable["synth001Store-Synth001Store"] = { [unowned self] in self.synth001Store as Any }
        localTable["synth001Service-Synth001Service"] = { [unowned self] in self.synth001Service as Any }
        localTable["synth002Store-Synth002Store"] = { [unowned self] in self.synth002Store as Any }
        localTable["synth002Service-Synth002Service"] = { [unowned self] in self.synth002Service as Any }
        localTable["synth003Store-Synth003Store"] = { [unowned self] in self.synth003Store as Any }
        localTable["synth003Service-Synth003Service"] = { [unowned self] in self.synth003Service as Any }
        localTable["synth004Store-Synth004Store"] = { [unowned self] in self.synth004Store as Any }
        localTable["synth004Service-Synth004Service"] = { [unowned self] in self.synth004Service as Any }
        localTable["synth005Store-Synth005Store"] = { [unowned self] in self.synth005Store as Any }
        localTable["synth005Service-Synth005Service"] = { [unowned self] in self.synth005Service as Any }
        localTable["synth006Store-Synth006Store"] = { [unowned self] in self.synth006Store as Any }
        localTable["synth006Service-Synth006Service"] = { [unowned self] in self.synth006Service as Any }
        localTable["synth007Store-Synth007Store"] = { [unowned self] in self.synth007Store as Any }
        localTable["synth007Service-Synth007Service"] = { [unowned self] in self.synth007Service as Any }
        localTable["synth008Store-Synth008Store"] = { [unowned self] in self.synth008Store as Any }
        localTable["synth008Service-Synth008Service"] = { [unowned self] in self.synth008Service as Any }
        localTable["synth009Store-Synth009Store"] = { [unowned self] in self.synth009Store as Any }
        localTable["synth009Service-Synth009Service"] = { [unowned self] in self.synth009Service as Any }
        localTable["synth010Store-Synth010Store"] = { [unowned self] in self.synth010Store as Any }
        localTable["synth010Service-Synth010Service"] = { [unowned self] in self.synth010Service as Any }
        localTable["synth011Store-Synth011Store"] = { [unowned self] in self.synth011Store as Any }
        localTable["synth011Service-Synth011Service"] = { [unowned self] in self.synth011Service as Any }
        localTable["synth012Store-Synth012Store"] = { [unowned self] in self.synth012Store as Any }
        localTable["synth012Service-Synth012Service"] = { [unowned self] in self.synth012Service as Any }
        localTable["synth013Store-Synth013Store"] = { [unowned self] in self.synth013Store as Any }
        localTable["synth013Service-Synth013Service"] = { [unowned self] in self.synth013Service as Any }
        localTable["synth014Store-Synth014Store"] = { [unowned self] in self.synth014Store as Any }
        localTable["synth014Service-Synth014Service"] = { [unowned self] in self.synth014Service as Any }
        localTable["synth015Store-Synth015Store"] = { [unowned self] in self.synth015Store as Any }
        localTable["synth015Service-Synth015Service"] = { [unowned self] in self.synth015Service as Any }
        localTable["synth016Store-Synth016Store"] = { [unowned self] in self.synth016Store as Any }
        localTable["synth016Service-Synth016Service"] = { [unowned self] in self.synth016Service as Any }
        localTable["synth017Store-Synth017Store"] = { [unowned self] in self.synth017Store as Any }
        localTable["synth017Service-Synth017Service"] = { [unowned self] in self.synth017Service as Any }
        localTable["synth018Store-Synth018Store"] = { [unowned self] in self.synth018Store as Any }
        localTable["synth018Service-Synth018Service"] = { [unowned self] in self.synth018Service as Any }
        localTable["synth019Store-Synth019Store"] = { [unowned self] in self.synth019Store as Any }
        localTable["synth019Service-Synth019Service"] = { [unowned self] in self.synth019Service as Any }
        localTable["synth020Store-Synth020Store"] = { [unowned self] in self.synth020Store as Any }
        localTable["synth020Service-Synth020Service"] = { [unowned self] in self.synth020Service as Any }
        localTable["synth021Store-Synth021Store"] = { [unowned self] in self.synth021Store as Any }
        localTable["synth021Service-Synth021Service"] = { [unowned self] in self.synth021Service as Any }
        localTable["synth022Store-Synth022Store"] = { [unowned self] in self.synth022Store as Any }
        localTable["synth022Service-Synth022Service"] = { [unowned self] in self.synth022Service as Any }
        localTable["synth023Store-Synth023Store"] = { [unowned self] in self.synth023Store as Any }
        localTable["synth023Service-Synth023Service"] = { [unowned self] in self.synth023Service as Any }
        localTable["synth024Store-Synth024Store"] = { [unowned self] in self.synth024Store as Any }
        localTable["synth024Service-Synth024Service"] = { [unowned self] in self.synth024Service as Any }
        localTable["synth025Store-Synth025Store"] = { [unowned self] in self.synth025Store as Any }
        localTable["synth025Service-Synth025Service"] = { [unowned self] in self.synth025Service as Any }
        localTable["synth026Store-Synth026Store"] = { [unowned self] in self.synth026Store as Any }
        localTable["synth026Service-Synth026Service"] = { [unowned self] in self.synth026Service as Any }
        localTable["synth027Store-Synth027Store"] = { [unowned self] in self.synth027Store as Any }
        localTable["synth027Service-Synth027Service"] = { [unowned self] in self.synth027Service as Any }
        localTable["synth028Store-Synth028Store"] = { [unowned self] in self.synth028Store as Any }
        localTable["synth028Service-Synth028Service"] = { [unowned self] in self.synth028Service as Any }
        localTable["synth029Store-Synth029Store"] = { [unowned self] in self.synth029Store as Any }
        localTable["synth029Service-Synth029Service"] = { [unowned self] in self.synth029Service as Any }
        localTable["synth030Store-Synth030Store"] = { [unowned self] in self.synth030Store as Any }
        localTable["synth030Service-Synth030Service"] = { [unowned self] in self.synth030Service as Any }
        localTable["synth031Store-Synth031Store"] = { [unowned self] in self.synth031Store as Any }
        localTable["synth031Service-Synth031Service"] = { [unowned self] in self.synth031Service as Any }
        localTable["synth032Store-Synth032Store"] = { [unowned self] in self.synth032Store as Any }
        localTable["synth032Service-Synth032Service"] = { [unowned self] in self.synth032Service as Any }
        localTable["synth033Store-Synth033Store"] = { [unowned self] in self.synth033Store as Any }
        localTable["synth033Service-Synth033Service"] = { [unowned self] in self.synth033Service as Any }
        localTable["synth034Store-Synth034Store"] = { [unowned self] in self.synth034Store as Any }
        localTable["synth034Service-Synth034Service"] = { [unowned self] in self.synth034Service as Any }
        localTable["synth035Store-Synth035Store"] = { [unowned self] in self.synth035Store as Any }
        localTable["synth035Service-Synth035Service"] = { [unowned self] in self.synth035Service as Any }
        localTable["synth036Store-Synth036Store"] = { [unowned self] in self.synth036Store as Any }
        localTable["synth036Service-Synth036Service"] = { [unowned self] in self.synth036Service as Any }
        localTable["synth037Store-Synth037Store"] = { [unowned self] in self.synth037Store as Any }
        localTable["synth037Service-Synth037Service"] = { [unowned self] in self.synth037Service as Any }
        localTable["synth038Store-Synth038Store"] = { [unowned self] in self.synth038Store as Any }
        localTable["synth038Service-Synth038Service"] = { [unowned self] in self.synth038Service as Any }
        localTable["synth039Store-Synth039Store"] = { [unowned self] in self.synth039Store as Any }
        localTable["synth039Service-Synth039Service"] = { [unowned self] in self.synth039Service as Any }
        localTable["synth040Store-Synth040Store"] = { [unowned self] in self.synth040Store as Any }
        localTable["synth040Service-Synth040Service"] = { [unowned self] in self.synth040Service as Any }
        localTable["synth041Store-Synth041Store"] = { [unowned self] in self.synth041Store as Any }
        localTable["synth041Service-Synth041Service"] = { [unowned self] in self.synth041Service as Any }
        localTable["synth042Store-Synth042Store"] = { [unowned self] in self.synth042Store as Any }
        localTable["synth042Service-Synth042Service"] = { [unowned self] in self.synth042Service as Any }
        localTable["synth043Store-Synth043Store"] = { [unowned self] in self.synth043Store as Any }
        localTable["synth043Service-Synth043Service"] = { [unowned self] in self.synth043Service as Any }
        localTable["synth044Store-Synth044Store"] = { [unowned self] in self.synth044Store as Any }
        localTable["synth044Service-Synth044Service"] = { [unowned self] in self.synth044Service as Any }
        localTable["synth045Store-Synth045Store"] = { [unowned self] in self.synth045Store as Any }
        localTable["synth045Service-Synth045Service"] = { [unowned self] in self.synth045Service as Any }
        localTable["synth046Store-Synth046Store"] = { [unowned self] in self.synth046Store as Any }
        localTable["synth046Service-Synth046Service"] = { [unowned self] in self.synth046Service as Any }
        localTable["synth047Store-Synth047Store"] = { [unowned self] in self.synth047Store as Any }
        localTable["synth047Service-Synth047Service"] = { [unowned self] in self.synth047Service as Any }
        localTable["synth048Store-Synth048Store"] = { [unowned self] in self.synth048Store as Any }
        localTable["synth048Service-Synth048Service"] = { [unowned self] in self.synth048Service as Any }
        localTable["synth049Store-Synth049Store"] = { [unowned self] in self.synth049Store as Any }
        localTable["synth049Service-Synth049Service"] = { [unowned self] in self.synth049Service as Any }
        localTable["synth050Store-Synth050Store"] = { [unowned self] in self.synth050Store as Any }
        localTable["synth050Service-Synth050Service"] = { [unowned self] in self.synth050Service as Any }
        localTable["synth051Store-Synth051Store"] = { [unowned self] in self.synth051Store as Any }
        localTable["synth051Service-Synth051Service"] = { [unowned self] in self.synth051Service as Any }
        localTable["synth052Store-Synth052Store"] = { [unowned self] in self.synth052Store as Any }
        localTable["synth052Service-Synth052Service"] = { [unowned self] in self.synth052Service as Any }
        localTable["synth053Store-Synth053Store"] = { [unowned self] in self.synth053Store as Any }
        localTable["synth053Service-Synth053Service"] = { [unowned self] in self.synth053Service as Any }
        localTable["synth054Store-Synth054Store"] = { [unowned self] in self.synth054Store as Any }
        localTable["synth054Service-Synth054Service"] = { [unowned self] in self.synth054Service as Any }
        localTable["synth055Store-Synth055Store"] = { [unowned self] in self.synth055Store as Any }
        localTable["synth055Service-Synth055Service"] = { [unowned self] in self.synth055Service as Any }
        localTable["synth056Store-Synth056Store"] = { [unowned self] in self.synth056Store as Any }
        localTable["synth056Service-Synth056Service"] = { [unowned self] in self.synth056Service as Any }
        localTable["synth057Store-Synth057Store"] = { [unowned self] in self.synth057Store as Any }
        localTable["synth057Service-Synth057Service"] = { [unowned self] in self.synth057Service as Any }
        localTable["synth058Store-Synth058Store"] = { [unowned self] in self.synth058Store as Any }
        localTable["synth058Service-Synth058Service"] = { [unowned self] in self.synth058Service as Any }
        localTable["synth059Store-Synth059Store"] = { [unowned self] in self.synth059Store as Any }
        localTable["synth059Service-Synth059Service"] = { [unowned self] in self.synth059Service as Any }
        localTable["synth060Store-Synth060Store"] = { [unowned self] in self.synth060Store as Any }
        localTable["synth060Service-Synth060Service"] = { [unowned self] in self.synth060Service as Any }
        localTable["synth061Store-Synth061Store"] = { [unowned self] in self.synth061Store as Any }
        localTable["synth061Service-Synth061Service"] = { [unowned self] in self.synth061Service as Any }
        localTable["synth062Store-Synth062Store"] = { [unowned self] in self.synth062Store as Any }
        localTable["synth062Service-Synth062Service"] = { [unowned self] in self.synth062Service as Any }
        localTable["synth063Store-Synth063Store"] = { [unowned self] in self.synth063Store as Any }
        localTable["synth063Service-Synth063Service"] = { [unowned self] in self.synth063Service as Any }
        localTable["synth064Store-Synth064Store"] = { [unowned self] in self.synth064Store as Any }
        localTable["synth064Service-Synth064Service"] = { [unowned self] in self.synth064Service as Any }
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
