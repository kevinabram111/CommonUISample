// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

@MainActor
public final class AssetManager {

    public static let shared = AssetManager()

    public enum AssetImage: String {
        case sampleImage = "sample_image"
    }

    public enum OnboardingImage: String {
        case sampleImage = "sample_image"
    }

    public init() {}

    public func image(for asset: AssetImage) -> UIImage? {
        return UIImage(named: asset.rawValue, in: .module, compatibleWith: nil)
    }

    public func onboardingImage(for asset: OnboardingImage) -> UIImage? {
        return UIImage(named: asset.rawValue, in: .module, compatibleWith: nil)
    }
}
