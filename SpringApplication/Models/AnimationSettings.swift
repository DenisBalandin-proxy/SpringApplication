//
//  AnimationSettings.swift
//  SpringApplication
//
//  Created by Denis on 2022/11/01.
//

import Foundation

struct AnimationSettings {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension AnimationSettings {
    static func getAnimateSettings() -> AnimationSettings {
        
        let animationValues = SettingsStore.settings
        
        let animationPreset = animationValues.preset.randomElement()?.rawValue ?? "pop"
        let animationCurve = animationValues.curve.randomElement()?.rawValue ?? "easyIn"
        let animationForce = Double.random(in: 0.5...1)
        let animationDuration = Double.random(in: 0.5...1)
        let animationDelay = Double.random(in: 0...0.5)
        
        let settings = AnimationSettings(
            preset: animationPreset,
            curve: animationCurve,
            force: animationForce,
            duration: animationDuration,
            delay: animationDelay
        )
        return settings
    }
}
