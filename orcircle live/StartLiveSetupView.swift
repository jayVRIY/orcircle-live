//
//  StartLiveSetupView.swift
//  orcircle live
//
//  Created by jay on 2022/11/13.
//

import SwiftUI

struct StartLiveSetupView: View {
    @State var textValue: String = ""
    var body: some View {
        NavigationStack(){
            VStack{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300),spacing: 50)],spacing: 50){
                        VStack{
                            ZStack{
                                Color.red
                            }
                        }
                        .aspectRatio(16/9, contentMode: .fit)
                        .cornerRadius(30)
                        VStack(alignment: .leading){
                            Text("Start Live").font(.title).fontWeight(.semibold).padding(.bottom)
                            Text("Live room title")
                            ZStack{
                                StyledTextField(value: $textValue, placeHoder: "").frame(width: 180)
                            }
                            Text("Room description")
                            ZStack{
                                StyledTextField(value: $textValue, placeHoder: "")
                            }
                        }
                }
                Spacer()
            }.padding(.all,30)
        }
         .navigationTitle("Create Live Room")
    }
}

struct StartLiveSetupView_Previews: PreviewProvider {
    static var previews: some View {
            StartLiveSetupView()
                
        }
}
