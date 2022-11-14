//
//  ContentView.swift
//  orcircle live
//
//  Created by jay on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @GestureState var press = false
    @State var showStartLive = false
    var body: some View {
        NavigationStack(){
            ZStack{
                Color.gray.opacity(0.10)
                VStack(spacing: 0){
                    HStack{
                        Circle().frame(width: 50,height: 50)
                        Text("asdasdfasfdsa")
                            .lineLimit(2)
                            .frame(width: 80)
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.gray.opacity(0.1))
                            .frame(height: 50)
                            .overlay{
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                    Text("Search Rooms")
                                }.foregroundColor(.gray.opacity(0.8))
                            }
                    }
                    .padding()
                    .background(.white)
                    .shadow(color: .gray.opacity(0.2), radius: 10)
                    .zIndex(1000)
                    
                    ScrollView{
                        VStack{
                            TabView{
                                Rectangle().fill(.white)
                                Rectangle().fill(.red)
                                Rectangle().fill(.blue)
                                Rectangle().fill(.white)
                                Rectangle().fill(.red)
                                Rectangle().fill(.blue)
                                Rectangle().fill(.white)
                                Rectangle().fill(.red)
                                Rectangle().fill(.blue)
                            }.tabViewStyle(.page)
                                .aspectRatio(16/9, contentMode: .fill)
                                .cornerRadius(30)
                                .frame(maxWidth: 480,maxHeight: 270)
                            Spacer()
                        }
                        HStack(){
                            Text("Living").font(.title3).fontWeight(.semibold)
                            Spacer()
                        }.padding(.top,16)
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150),spacing: 16)],spacing: 16){
                            ForEach(0 ..< 16){ item in
                                Rectangle().fill(.white)
                                    .aspectRatio(16/9, contentMode: .fill)
                                    .cornerRadius(10)
                            }
                        }
                        
                    }.padding()
                        .refreshable {
                            
                        }
                }.shadow(color: .gray.opacity(0.2), radius: 5)
                if show{
                    VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
                        .transition(.opacity)
                        .background(.ultraThinMaterial)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation {
                                show.toggle()
                            }
                        }
                    
                }
                VStack{
                    Spacer()
                    StartLive()
                        .cornerRadius(30)
                        .offset(show ? CGSize(width: 0,height:0) :CGSize(width: 0,height: 500))
                        .padding(.bottom,150)
                        .shadow(color: .gray.opacity(0.5), radius: show ? 20:  0)
                        .onTapGesture {
                            withAnimation {
                                show.toggle()
                                showStartLive.toggle()
                            }
                        }
                }
                ZStack{
                    VStack{
                        Spacer()
                        Circle()
                            .fill(.white)
                            .shadow(radius: show ? 8 : 5)
                            .overlay{
                                Image(systemName: "plus")
                                    .font(.largeTitle)
                                    .rotationEffect(.degrees(show ? 45 : 0 ))
                            }
                            .frame(width: 60)
                            .offset(CGSize(width: 0, height: -35))
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                }
                            }
                    }
                }
                NavigationLink(destination: StartLiveSetupView(), isActive: $showStartLive) { EmptyView() }
            }
        }
    }
}
func StartLive() -> some View {
    return VStack(alignment: .center){
        Image("LargeCamera")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300,height: 140)
            .padding(0)
        Text("Start Live").offset(CGSize(width:0,height:-20))
            .fontWeight(.semibold)
            .font(.title3)
    }
    .frame(width: 200,height: 200)
    .cornerRadius(30)
    .background(.white)
}
func HoleShapeMask(in rect: CGRect) -> Path {
    var shape = Rectangle().path(in: rect)
    shape.addPath(Circle().path(in: rect))
    return shape
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
