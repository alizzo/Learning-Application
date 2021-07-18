//
//  ContentView.swift
//  Learning-X-version
//
//  Created by X on 7/18/21.
//

import SwiftUI

struct HomeView: View {
    
   @EnvironmentObject var model: ContentModel
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
