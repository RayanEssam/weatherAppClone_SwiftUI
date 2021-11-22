//
//  ContentView.swift
//  weatherSwiftUI
//
//  Created by Rayan Taj on 02/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .center) {
            
            Image("bg4")
                .resizable().scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    
               
                    Text("Riyadh")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text("23º")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                    Text("Mostly clear")
                        .foregroundColor(Color.white)
                    
                    Text("H:32º  L:17º")
                        .foregroundColor(Color.white)
                    
                    
                    
                }.padding(.top, 50)
                
                
                ZStack{
                    
                    ScrollView(.horizontal , showsIndicators: false){
                        
                        VStack(alignment: .center) {
                            Text("Clear Condtions will continue for today")
                                .font(.body)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                         
                                .opacity(0.9)
                                .padding(20)
                                
                            
                            Divider()
                            
                            ScrollView(.horizontal , showsIndicators: false){
                                HStack( spacing: 25){
                                    
                                    
                                    hoursWeather()
                                    
                                    hoursWeather()
                                    
                                    hoursWeather()
                                    
                                    hoursWeather()
                                    
                                    hoursWeather()
                                    
                                    
                                    
                                    
                                }
                            }
                        }
                           
                            
                        
                        
                        
             
                        
                        
                        
                        
                    }   .padding(15)
                    
                }.background(
                    RoundedRectangle(cornerRadius: 25)
                     
                        .foregroundColor(
                            .white.opacity(0.35))
                )
                    .frame(width: UIScreen.main.bounds.width-50)
                 
                   
                ZStack{
            
                
                    ScrollView(.vertical ){
                
                        VStack ( spacing: 10){
                            daysWeather()
                            daysWeather()
                            daysWeather()
                            daysWeather()
                            daysWeather()
                            daysWeather()
                            daysWeather()
                        }
                
                
                
                    }.padding(30)
                
                
                
                
                
                
                }
                    .background(
                    RoundedRectangle(cornerRadius: 25)
                     
                        .foregroundColor(
                            .white.opacity(0.35))
                )
                    .frame(width: UIScreen.main.bounds.width-50)
                
                    .padding(.top , 30)

                
            }
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct hoursWeather: View {
    var body: some View {
        VStack{
            
            Text("Now")
                .foregroundColor(Color.white)
            Image(systemName: "sun.max.fill")
                .foregroundColor(.yellow)
                .padding()
            Text("26")
                .foregroundColor(Color.white)
            
        }
    }
}

struct daysWeather: View {
    var body: some View {
        HStack{
            
            Text("Today")
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.bold)
            
            Spacer()
            
            
            Image(systemName: "sun.max.fill")
                .foregroundColor(.yellow)
            
            Spacer()
            
            Text("18")
                .foregroundColor(.white)
                .font(.title3)
            
            
            Spacer()
            
            
            Text("33")
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.bold)
            
            
            
        }.padding(10)
    }
}


//
//ZStack{
//
//    //                    RoundedRectangle(cornerRadius: 25)
//    //                        .frame( height: 350, alignment: .leading)
//    //                        .padding(15)
//    //                        .blur(radius: 5)
//    //                        .opacity(0.3)
//    ////                        .background(Material.ultraThin)
//    //                        .foregroundColor(
//    //                            .white.opacity(0.35))
//
//
//    ScrollView(.vertical ){
//
//        VStack ( spacing: 10){
//            daysWeather()
//            daysWeather()
//            daysWeather()
//            daysWeather()
//            daysWeather()
//        }
//
//
//
//    }.padding(30)
//
//
//
//
//
//
//} .foregroundColor(
//    .white.opacity(0.85))
