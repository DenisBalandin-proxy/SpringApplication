//
//  SettingsStore.swift
//  SpringApplication
//
//  Created by Denis on 2022/11/02.
//

import Foundation
import SpringAnimation

class SettingsStore {
    
    static let settings = SettingsStore()
    
    let preset = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    private init() {}
}
