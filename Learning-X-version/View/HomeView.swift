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
        
        NavigationView{
            VStack (alignment: .leading){
                Text("What do you want to do today?").padding(.leading, 20)
                
                
                ScrollView{
                    LazyVStack{
                        ForEach(model.modules){ module in
                            //learning card
                            HomeViewRow(image: module.content.image, title: "Learn \(module.category)" , description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                            
                            //test card
                            HomeViewRow(image: module.test.image, title: " \(module.category) test" , description: module.test.description, count: "\(module.test.questions.count) Lesssons", time: module.test.time)
                            
                        }
                    }.padding()
                }
            }.navigationTitle("Getting Started")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
