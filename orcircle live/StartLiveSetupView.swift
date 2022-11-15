//
//  StartLiveSetupView.swift
//  orcircle live
//
//  Created by jay on 2022/11/13.
//

import SwiftUI
import _AuthenticationServices_SwiftUI
import SwiftUIX

struct StartLiveSetupView: View {
    
    @State var showLive = false
    @State var textValue: String = ""
    @State var sourceType : [UIImagePickerController.InfoKey : Any]?
    var body: some View {
        NavigationLink(destination: StartLiveSetupView(), isActive: $showLive) { EmptyView() }
        NavigationStack(){
            ZStack{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300),spacing: 30)],alignment: .leading, spacing:20){
                    Text("Start Live").font(.title).fontWeight(.semibold).padding(.bottom)
                    VStack(alignment: .leading, spacing: 12.0){
                        Text("Live room title").fontWeight(.semibold)
                        ZStack{
                            StyledTextField(value: $textValue, placeHoder: "").frame(width: 180)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 12.0){
                        Text("Room description").fontWeight(.semibold)
                        ZStack{
                            StyledTextField(value: $textValue, placeHoder: "").frame(width: 320)
                        }
                    }
                    VStack(alignment: .leading, spacing: 12){
                        Text("Room description").fontWeight(.semibold)
                        ZStack{
                            Color.gray.opacity(0.1)
                            Image(systemName: "plus").font(.largeTitle).fontWeight(.semibold)
                        }.aspectRatio(16/9, contentMode: .fit)
                            .cornerRadius(30)
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 30)).onTapGesture {
                        ImagePicker(info: $sourceType)
                    }
                    ZStack{
                        Color.red
                        Text("Start").foregroundColor(.white).fontWeight(.semibold)
                    }.frame(height: 50).cornerRadius(20)
                        .onTapGesture {
                           
                        }
                }.offset(CGSize(width:0,height:-50))
            }.padding(.all,30)
                .shadow(color: .gray.opacity(0.5), radius: 9)
        }
        .navigationTitle("Create Live Room")
    }
}

struct StartLiveSetupView_Previews: PreviewProvider {
    static var previews: some View {
        StartLiveSetupView()
        
    }
}
