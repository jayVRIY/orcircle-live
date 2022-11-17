//
//  StartPage.swift
//  orcircle live
//
//  Created by jay on 2022/11/15.
//

import SwiftUI

struct StartPage: View {
    @State var isShowStart : Binding<Bool>
    var body: some View {
        ZStack{
            TabView{
                ZStack{
                    Color.blue.opacity(0.10)
                    Color.green.opacity(0.05)
                    VStack{
                        Image("Image 1").resizable().aspectRatio(contentMode: .fit).frame( height: 300)
                        Text("See new people!").fontWeight(.medium)
                            .font(.system(.title,design: .monospaced))
                            .foregroundColor(.black).opacity(0.5)
                    }
                }.ignoresSafeArea()
                ZStack{
                    Color.yellow.opacity(0.10)
                    Color.green.opacity(0.05)
                    VStack{
                        Image("Image 2").resizable().aspectRatio(contentMode: .fit).frame( height: 300)
                        Text("Get new recipe!").fontWeight(.medium)
                            .font(.system(.title,design: .monospaced))
                            .foregroundColor(.black).opacity(0.5)
                    }
                }.ignoresSafeArea()
                ZStack{
                    Color.blue.opacity(0.10)
                    Color.green.opacity(0.05)
                    VStack(spacing: 40.0){
                        Image("Image").resizable().aspectRatio(contentMode: .fit).frame( height: 300)
                        Text("Learn new stuff!").fontWeight(.medium)
                            .font(.system(.title,design: .monospaced))
                            .foregroundColor(.black).opacity(0.5)
                       
                    }
                }.ignoresSafeArea()
                ZStack{
                  
                    VStack(spacing: 20.0){
                        Image("Image 3").resizable().aspectRatio(contentMode: .fit)
                        ZStack{
                            Color.red
                            Text("Start you trip at orcircle live!").foregroundColor(.white).font(.title2).fontWeight(.semibold)
                        }.frame( height: 50)
                            .cornerRadius(40).padding()
                            .onTapGesture {
                                isShowStart.wrappedValue = false
                            }
                       
                    }
                }
            }.tabViewStyle(.page)
        }.ignoresSafeArea()
    }
}

