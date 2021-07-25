//
//  Learning_X_versionApp.swift
//  Learning-X-version
//
//  Created by X on 7/18/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}

