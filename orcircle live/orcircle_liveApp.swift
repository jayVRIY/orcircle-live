//
//  orcircle_liveApp.swift
//  orcircle live
//
//  Created by jay on 2022/11/13.
//

import SwiftUI

@main
struct orcircle_liveApp: App {
    @State var isShowStart:Bool = true
    var body: some Scene {
        WindowGroup {
            if isShowStart{
                StartPage(isShowStart: $isShowStart)
            }else{
                ContentView()
            }
        }
    }
}
