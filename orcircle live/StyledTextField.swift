//
//  StyledTextField.swift
//  orcircle live
//
//  Created by jay on 2022/11/14.
//

import SwiftUI

struct StyledTextField: View {
    var value :Binding<String>
    var placeHoder :String
    var cornerSize  = CGSize(width: 40,height: 40)
    var body: some View {
        RoundedRectangle(cornerSize: cornerSize)
            .stroke()
            .fill(.gray.opacity(0.2))
            .frame(height: 40)
        TextField(placeHoder, text:value )
            .padding(.leading)
            .padding(.trailing)
    }
}

