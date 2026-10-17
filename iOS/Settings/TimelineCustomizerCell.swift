//
//  TimelineCustomizerCell.swift
//  NetNewsWire-iOS
//
//  Created by Stuart Breckenridge on 21/08/2025.
//  Copyright © 2025 Ranchero Software. All rights reserved.
//

import UIKit
import Images

enum SliderConfiguration {
	case numberOfLines
	case iconSize
}

final class TimelineCustomizerCell: UICollectionViewCell {

	/// Set by the dequeuing controller before the cell is configured.
	var appDefaults: AppDefaults!
	@IBOutlet var slider: TickMarkSlider!

	var sliderConfiguration: SliderConfiguration! {
		didSet {
			switch sliderConfiguration {
			case .numberOfLines:
				slider.minimumValue = 1
				slider.maximumValue = 6
				if #available(iOS 26, *) {
					slider.trackConfiguration = .init(allowsTickValuesOnly: true, numberOfTicks: 6)
				}
				slider.value = Float(appDefaults.timelineNumberOfLines)
				slider.addTickMarks()
			case .iconSize:
				slider.minimumValue = 1
				slider.maximumValue = 3
				if #available(iOS 26, *) {
					slider.trackConfiguration = .init(allowsTickValuesOnly: true, numberOfTicks: 3)
				}
				slider.value = Float(appDefaults.timelineIconSize.rawValue)
				slider.addTickMarks()
			case .none:
				return
			}
		}
	}

	@IBAction func sliderValueChanges(_ sender: Any) {
		switch sliderConfiguration {
		case .numberOfLines:
			appDefaults.timelineNumberOfLines = Int(slider.value.rounded())
		case .iconSize:
			guard let iconSize = IconSize(rawValue: Int(slider.value.rounded())) else { return }
			appDefaults.timelineIconSize = iconSize
		case .none:
			return
		}
	}

	override func updateConfiguration(using state: UICellConfigurationState) {
		var backgroundConfig: UIBackgroundConfiguration
		if #available(iOS 18, *) {
			backgroundConfig = UIBackgroundConfiguration.listCell().updated(for: state)
		} else {
			backgroundConfig = UIBackgroundConfiguration.listGroupedCell().updated(for: state)
		}
		backgroundConfig.backgroundColor = traitCollection.userInterfaceStyle == .dark ? .secondarySystemBackground : .white
		backgroundConfig.cornerRadius = 20
		self.backgroundConfiguration = backgroundConfig
	}

}
