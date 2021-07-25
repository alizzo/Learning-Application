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
        ScrollView{
            LazyVStack{
                ForEach(model.modules){ module in
                    //learning card
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                          
                        HStack{
                            //image
                            Image("Swift")
                            
                            //text
                            
                       }
                    }
                    
                    //test card
                }
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
