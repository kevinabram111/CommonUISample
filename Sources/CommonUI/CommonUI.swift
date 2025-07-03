// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

enum AssetImage: String {
    case sampleImage = "sample_image"
}

enum OnboardingImage: String {
    case sampleImage = "sample_image"
}

@MainActor
final class AssetManager {
    static let shared = AssetManager()

    private init() {}

    func image(for asset: AssetImage) -> UIImage? {
        return UIImage(named: asset.rawValue, in: .module, compatibleWith: nil)
    }

    func onboardingImage(for asset: OnboardingImage) -> UIImage? {
        return UIImage(named: asset.rawValue, in: .module, compatibleWith: nil)
    }
}
