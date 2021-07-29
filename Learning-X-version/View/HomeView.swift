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
                            Image(module.content.image)
                                .resizable()
                                .frame(width: 116, height: 116)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                            
                            //text
                            VStack(alignment: .leading, spacing: 10){
                                //Headline
                                Text("Learn Swift")
                                
                                //Decription
                                Text("description")
                                    .padding(.bottom, 20)
                                
                                //Icons
                                HStack{
                                    Image(systemName: "text.book.closed")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                    Text("20 Lessons")
                                        .font(.caption)
                                    
                                    
                                    Image(systemName: "clock")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                    Text("2 hours")
                                        .font(.caption)
                                }
                            }
                
                        }.padding(.horizontal, 20)
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
